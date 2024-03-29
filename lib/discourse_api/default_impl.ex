defmodule DiscourseApi.DefaultImpl do
  @moduledoc """
    Http client for discourse_api
  """
  alias HTTPoison.Response

  require Logger
  @spec get_active_user(map) :: {:ok | :error, map}
  def get_active_user(options) do
    options = URI.encode_query(options)
    endpoint = base_url() <> "admin/users/list/active.json?" <> options

    get(endpoint)
  end

  @spec get_user_by_id(String.t()) :: {:ok | :error, map}
  def get_user_by_id(id) do
    endpoint = base_url() <> "/admin/users/#{id}.json"

    get(endpoint)
  end

  @spec get_sso_email(String.t()) :: {:ok | :error, map}
  def get_sso_email(username) do
    endpoint = base_url() <> "/u/#{username}/sso-email.json"

    get(endpoint)
  end

  @spec get_user_by_external_id(String.t()) :: {:ok | :error, map}
  def get_user_by_external_id(external_id) do
    endpoint = base_url() <> "u/by-external/#{external_id}.json"

    get(endpoint)
  end

  @spec silence(non_neg_integer, Date.t(), String.t(), String.t()) :: {:ok | :error, map}
  def silence(id, silenced_till, reason, post_action) do
    endpoint = base_url() <> "admin/users/#{id}/silence"

    params =
      Jason.encode!(%{
        silenced_till: silenced_till,
        reason: reason,
        post_action: post_action
      })

    put(endpoint, params)
  end

  @spec unsilence(non_neg_integer) :: {:ok | :error, map}
  def unsilence(id) do
    endpoint = base_url() <> "admin/users/#{id}/unsilence"

    put(endpoint)
  end

  def change_user_email(username, new_email) do
    endpoint = base_url() <> "users/#{username}/preferences/email"

    put(endpoint, Jason.encode!(%{email: new_email}), headers(:json))
  end

  def get(endpoint) do
    with {:ok, %Response{body: body, status_code: 200}} <-
           HttpClient.get(endpoint, headers(:json)),
         {:ok, infos} <- Jason.decode(body) do
      {:ok, infos}
    else
      {:ok, %Response{body: body}} ->
        Logger.info(fn ->
          inspect(body)
        end)

        {:error, :http}

      {:error, body = %Jason.DecodeError{}} ->
        Logger.info(fn ->
          "could not decode body: #{inspect(body)}"
        end)
    end
  end

  def put(endpoint, payload \\ "", headers \\ headers(:multipart)) do
    with {:ok, %Response{body: body, status_code: 200}} <-
           HttpClient.put(endpoint, payload, headers),
         {:ok, infos} <- maybe_decode(body) do
      {:ok, infos}
    else
      {:ok, %Response{body: body}} ->
        Logger.info(fn ->
          inspect(body)
        end)

        {:error, :http}
    end
  end

  defp maybe_decode(body) do
    case Jason.decode(body) do
      {:ok, _} = success ->
        success

      {:error, error} ->
        Logger.info("body: #{body} can't be decoded: #{inspect(error)}")
        {:ok, ""}
    end
  end

  defp headers(:multipart) do
    [
      {"Content-Type", "multipart/form-data"}
    ] ++ headers()
  end

  defp headers(:json) do
    [
      {"Content-Type", "application/json"}
    ] ++ headers()
  end

  defp headers do
    [
      {"Accept", "application/json"},
      {"Api-Key", api_key()},
      {"Api-Username", user()}
    ]
  end

  defp user, do: Application.get_env(:discourse_api, :user)
  defp api_key, do: Application.get_env(:discourse_api, :api_key)
  defp base_url, do: Application.get_env(:discourse_api, :url)
end
