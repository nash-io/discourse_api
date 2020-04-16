# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
import Config

config :discourse_api,
  url: "https://test.trydiscourse.com/",
  user: "test",
  api_key: "API_KEY",
  impl: DiscourseApi.DefaultImpl

config :http_client, http_client_impl: HTTPoison
