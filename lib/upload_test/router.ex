defmodule UploadTest.Router do
  use UploadTest, :router
  
  get "/", UploadTest.UploadController, :index
  post "/", UploadTest.UploadController, :post
end