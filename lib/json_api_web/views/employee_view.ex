defmodule JsonApiWeb.EmployeeView do
  use JsonApiWeb, :view

  def render("index.json", %{employees: employees}) do
    render_many(employees, __MODULE__, "employee.json")
  end

  def render("employee.json", %{employee: employee}) do
    %{
      employee_number: employee.employee_number,
      last_name: employee.last_name,
      first_name: employee.first_name
    }
  end
end
