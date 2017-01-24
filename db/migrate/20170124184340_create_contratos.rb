class CreateContratos < ActiveRecord::Migration[5.0]
  def change
    create_table :contratos do |t|
      t.string :tipoContrato
      t.date :fechaIngreso
      t.date :fechaContrato
      t.integer :diasPlazoFijo
      t.date :primerVencimiento
      t.date :renovacionContrato
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
