defmodule WordCounter do
  def read_file(file_path) do
    case File.read(file_path) do
      {:ok, content} -> {:ok, content}
      {:error, reason} -> {:error, reason}
    end
  end

  def count_words(content) do
    content
    |> String.split(~r/\s+/)
    |> length()
  end
end
