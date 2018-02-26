class AddKeyToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column(:employees, :employee_id, :int)
  end
end
