defmodule ShotsTest do
  use ExUnit.Case

  test "it returns a list of gitshots" do
    assert(Shots.all('does/not/exist') == [])
  end

  assert(Shots.all('test/fixtures/shots') == ["2013-08-09-195304.mugim.jpg"])
end
