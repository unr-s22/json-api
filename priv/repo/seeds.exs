# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     JsonApi.Repo.insert!(%JsonApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
employee = %JsonApi.Employees.Employee{
  last_name: "Potter",
  first_name: "Gandalf",
  employee_number: 123
}

JsonApi.Repo.insert!(employee)
