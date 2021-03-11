class AddColumnsToMedecins < ActiveRecord::Migration[6.0]
  def change
    add_column :medecins, :adress, :text
    add_column :medecins, :code_postal, :integer
    add_column :medecins, :telephone, :integer
  end
end
