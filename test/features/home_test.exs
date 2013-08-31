# Feature tests goes through the Dynamo.under_test
# and are meant to test the full stack.
defmodule HomeTest do
  use Gitshots.TestCase
  use Dynamo.HTTP.Case

  test "shows the latest commit screenshots" do
    conn = get("/")
    assert conn.status == 200
  end
end
