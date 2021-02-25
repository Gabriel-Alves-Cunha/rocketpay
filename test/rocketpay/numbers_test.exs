defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "When there is a file with the given name, return the sum of its numbers." do
      res = Numbers.sum_from_file("numbers")
      expected_res = {:ok, %{result: 37}}

      assert res == expected_res
    end

    test "When there is NOT a file with the given name, return an error." do
      res = Numbers.sum_from_file("IdontExist")
      expected_res = {:error, %{message: "Invalid file name!"}}

      assert res == expected_res
    end
  end
end
