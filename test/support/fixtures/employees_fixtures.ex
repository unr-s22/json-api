defmodule JsonApi.EmployeesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `JsonApi.Employees` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        employee_number: 42,
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> JsonApi.Employees.create_employee()

    employee
  end
end
