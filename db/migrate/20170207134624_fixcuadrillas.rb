class Fixcuadrillas < ActiveRecord::Migration[5.0]
  def change
    rename_column :cuadrillas, :date, :fechaInicio
    change_column :cuadrillas, :fechaInicio, :date
  end
end
