defmodule Shots do
  def all(path) do
    case File.ls(path) do
      { :error, _reason } -> []
      { :ok, files } -> files
    end
  end
end
