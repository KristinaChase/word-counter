defmodule WordCounter.CLI do
  def main(args) do
    case parse_args(args) do
      {:ok, file_path} -> process_file(file_path)
      {:error, message} -> IO.puts(message)
    end
  end

  defp parse_args([file_path]) when is_binary(file_path), do: {:ok, file_path}
  defp parse_args(_), do: {:error, "Usage: word_counter <file_path>"}

  defp process_file(file_path) do
    case WordCounter.read_file(file_path) do
      {:ok, content} ->
        word_count = WordCounter.count_words(content)
        IO.puts("The file contains #{word_count} words.")

      {:error, reason} ->
        IO.puts("Failed to read file: #{reason}")
    end
  end
end
