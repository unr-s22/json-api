defmodule JsonApi.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :last_name, :string
      add :first_name, :string
      add :employee_number, :integer

      timestamps()
    end
  end
end
