class AddVilleToMedecins < ActiveRecord::Migration[6.0]
  def change
    add_column :medecins, :ville, :string
  end
end
