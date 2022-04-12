defmodule SumListTest do
  use ExUnit.Case, async: true

  describe "call/1" do
    test "when given an empty list returns 0 (accumulator)" do
      empty_list = []

      response = SumList.call(empty_list)

      assert response == 0
    end

    test "when given a valid list, returns the list sum" do
      list = [1, 2, 3]

      response = SumList.call(list)

      assert response == 6
    end

    test "when given a list with negative values" do
      negative_list = [5, -10, 10]

      response = SumList.call(negative_list)

      assert response == 5
    end
  end
end
