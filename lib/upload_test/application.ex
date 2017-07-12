defmodule UploadTest.Application do
  use Application

  def start(_type, _args) do
    :observer.start()
    import Supervisor.Spec
    children = [
      supervisor(UploadTest.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: UploadTest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
