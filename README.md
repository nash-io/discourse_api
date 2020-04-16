# DiscourseApi

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `discourse_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:discourse_api, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/discourse_api](https://hexdocs.pm/discourse_api).

## Mock backend

For development, there is a backend which doesn't issue requests. It can be configured like this:

```elixir
  config :discourse_api,
    ...
    impl: DiscourseApi.DevImpl,
    mock_initiate_json_file: "<full path to json file to return>",
    mock_retrieve_data_json_file: "<full path to json file to return>",
    mock_download_image_file: "<full path to image file to return>"
```
