defmodule BasicAuth.Mixfile do
  use Mix.Project

  def project do
    [app: :basic_auth,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy, :plug]]
  end

  defp deps do
    [{:cowboy, "~> 1.0"},
     {:plug, "~> 0.14 or ~> 1.0"}]
  end

  defp package do
    [contributors: ["Mark Connell",],
     licenses: ["MIT"],
     links: %{github: "https://github.com/mconnell/basic_auth"},
     files: ~w(lib LICENSE.md mix.exs README.md)]
  end

  defp description do
    "Basic Authentication Plug"
  end

end
