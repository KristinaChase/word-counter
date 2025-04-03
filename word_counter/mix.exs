defmodule WordCounter.MixProject do
    use Mix.Project

    def project do
    [
        app: :word_counter,
        version: "0.1.0",
        elixir: "~> 1.11",
        start_permanent: Mix.env() == :prod,
        deps: deps(),
        escript: escript()
    ]
    end

    defp escript do
    [main_module: WordCounter.CLI]
    end

    defp deps do
    []
    end
end
