class FixFechaCuadrillas < ActiveRecord::Migration[5.0]
  def change
    rename_column :cuadrillas, :fechaInicio, :date
    rename_column :cuadrillas, :fechaTermino, :date
  end
end
