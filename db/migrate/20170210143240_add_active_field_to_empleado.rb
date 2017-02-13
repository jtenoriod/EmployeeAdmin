class AddActiveFieldToEmpleado < ActiveRecord::Migration[5.0]
  def change
    add_column :empleados, :activo, :boolean, default: 0
  end
end
