class CreateHoraires < ActiveRecord::Migration[6.0]
  def change
    create_table :horaires do |t|
      t.boolean :disponible
      t.boolean :indisponible
      t.integer :medecin_id
      t.date "date"
      t.datetime "debut"
      t.datetime "fin"
      
      t.timestamps
    end
  end
end
