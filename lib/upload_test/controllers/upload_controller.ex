defmodule UploadTest.UploadController do
  use UploadTest, :controller
  require Logger

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end

  def post(conn, params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end
end