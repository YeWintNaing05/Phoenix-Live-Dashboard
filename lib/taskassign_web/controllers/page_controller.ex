defmodule TaskassignWeb.PageController do
  use TaskassignWeb, :controller
  import Logger

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, _params) do 
    Logger.debug "Starting Application..."
  end
end
