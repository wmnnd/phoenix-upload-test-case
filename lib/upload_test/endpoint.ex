defmodule UploadTest.Endpoint do
  use Phoenix.Endpoint, otp_app: :upload_test

  plug Plug.Parsers,
    parsers: [:multipart],
    pass: ["*/*"],
    length: 1_000_000_000

  plug Plug.MethodOverride
  plug Plug.Head

  plug UploadTest.Router
end
