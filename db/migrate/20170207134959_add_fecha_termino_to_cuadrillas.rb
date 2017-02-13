class AddFechaTerminoToCuadrillas < ActiveRecord::Migration[5.0]
  def change
    add_column :cuadrillas, :fechaTermino, :date
  end
end
