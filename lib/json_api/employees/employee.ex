defmodule JsonApi.Employees.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employees" do
    field :employee_number, :integer
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:last_name, :first_name, :employee_number])
    |> validate_required([:last_name, :first_name, :employee_number])
  end
end
