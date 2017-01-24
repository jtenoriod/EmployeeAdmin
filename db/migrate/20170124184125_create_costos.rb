class CreateCostos < ActiveRecord::Migration[5.0]
  def change
    create_table :costos do |t|
      t.integer :sueldoPactado
      t.integer :sueldoBase
      t.integer :sueldoTotal
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
