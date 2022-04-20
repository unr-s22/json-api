defmodule JsonApiWeb.EmployeeController do
  use JsonApiWeb, :controller

  def index(conn, _params) do
    employees = JsonApi.Employees.list_employees()
    render(conn, "index.json", employees: employees)
  end
end
