Dynamo.under_test(Gitshots.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Gitshots.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
