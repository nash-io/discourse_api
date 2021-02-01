defmodule DiscourseApi do
  @moduledoc """
  Documentation for DiscourseApi.
  """

  @callback get_active_user() :: {atom, map | atom}
  @callback get_active_user(map | nil) :: {atom, map | atom}
  def get_active_user(options \\ %{}) do
    impl().get_active_user(options)
  end

  @callback get_user_by_id(String.t()) :: {atom, map | atom}
  def get_user_by_id(id) do
    impl().get_user_by_id(id)
  end

  @callback get_user_by_external_id(String.t()) :: {atom, map | atom}
  def get_user_by_external_id(external_id) do
    impl().get_user_by_external_id(external_id)
  end

  @callback silence(non_neg_integer, Date.t(), String.t(), String.t()) :: {:ok | :error, map}
  def silence(id, silenced_till, reason, post_action) do
    impl().silence(id, silenced_till, reason, post_action)
  end

  @callback unsilence(non_neg_integer) :: {:ok | :error, map}
  @spec unsilence(any) :: any
  def unsilence(id) do
    impl().unsilence(id)
  end

  @callback change_user_email(String.t(), String.t()) :: {:ok | :error, map}
  def change_user_email(username, new_email) do
    impl().change_user_email(username, new_email)
  end

  def impl, do: Application.fetch_env!(:discourse_api, :impl)
end
