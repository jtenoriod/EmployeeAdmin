class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
      t.string :nombreEmpleado
      t.string :cargo
      t.string :especialidad
      t.boolean :art22
      t.string :nacionalidad
      t.string :rut
      t.boolean :alojamiento
      t.string :tipoContrato
      t.integer :edad
      t.boolean :cargaFamiliar
      t.string :estado
      t.string :fono
      t.date :fechaNacimiento
      t.string :afp
      t.boolean :traslado
      t.boolean :almuerzo
      t.date :fechaIngreso
      t.string :salud
      t.string :estadoCivil
      t.string :experiencia
      t.string :estudios
      t.text :notas
      t.references :cuadrilla, foreign_key: true

      t.timestamps
    end
  end
end
