class AddKeyToDivisions < ActiveRecord::Migration[5.1]
  def change
    add_column(:divisions, :division_id, :int)
  end
end
