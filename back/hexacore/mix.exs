defmodule Hexacore.MixProject do
  use Mix.Project

  def project do
    [
      app: :hexacore,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Hexacore.Application, []}
    ]
  end

  defp deps do
    [
      {:uuid, "~> 1.1"},
      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev], runtime: false},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
