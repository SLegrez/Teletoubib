class CreateCreneaux < ActiveRecord::Migration[6.0]
  def change
    create_table :creneaux do |t|
      t.boolean :disponible
      t.boolean :indisponible
      t.integer :medecin_id

      t.timestamps
    end
  end
end
