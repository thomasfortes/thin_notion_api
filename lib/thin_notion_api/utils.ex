defmodule ThinNotionApi.Utils do
  @moduledoc false

  def api_key, do: Application.get_env(:thin_notion_api, :api_key)

  def notion_version,
    do: Application.get_env(:thin_notion_api, :notion_version, "2021-05-13")

  def auth_header, do: [{"Authorization", "Bearer " <> api_key()}]
  def version_header, do: [{"Notion-Version", notion_version()}]
  def content_header, do: [{"Content-Type", "application/json"}]
  def request_headers, do: version_header() ++ auth_header()
  def post_request_headers, do: version_header() ++ auth_header() ++ content_header()
end
