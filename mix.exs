defmodule UploadTest.Mixfile do
  use Mix.Project

  def project do
    [app: :upload_test,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps()]
  end

  def application do
    [mod: {UploadTest.Application, []},
     extra_applications: [:logger]]
  end
  
  defp deps do
    [{:phoenix, "~> 1.3.0-rc"},
     {:phoenix_pubsub, "~> 1.0"},
     {:phoenix_html, "~> 2.6"},
     {:cowboy, "~> 1.0"}
]
  end
end
