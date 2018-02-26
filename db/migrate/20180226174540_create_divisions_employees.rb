class CreateDivisionsEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table(:divisions_employees) do |t|
      t.column(:division_id, :int)
      t.column(:employee_id, :int)

      t.timestamps()
    end
  end
end
