class CreateObras < ActiveRecord::Migration[5.0]
  def change
    create_table :obras do |t|
      t.string :nombreObra

      t.timestamps
    end
  end
end
