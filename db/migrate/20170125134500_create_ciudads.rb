class CreateCiudads < ActiveRecord::Migration[5.0]
  def change
    create_table :ciudads do |t|
      t.string :domicilio
      t.string :ciudad
      t.string :region

      t.timestamps
    end
  end
end
