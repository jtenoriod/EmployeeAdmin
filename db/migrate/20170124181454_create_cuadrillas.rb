class CreateCuadrillas < ActiveRecord::Migration[5.0]
  def change
    create_table :cuadrillas do |t|
      t.string :nombreCuadrilla
      t.string :jefeCuadrilla
      t.text :comentarios
      t.string :estado
      t.text :fechaInicio
      t.text :fechaTermino
      t.references :obra, foreign_key: true

      t.timestamps
    end
  end
end
