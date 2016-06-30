defmodule Rumbl.WatchController do
  use Rumbl.Web, :controller
  alias Rumbl.Video

  def show(conn, %{"id" => id}) do
  	video = Repo.get!(Video, id)
  	render conn, "show.html", video: video
  end

  def index(conn, _params) do
    render conn, "index.html"
  end
end
