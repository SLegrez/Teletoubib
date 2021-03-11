class RenameAdressToAdresse < ActiveRecord::Migration[6.0]
  def change
    rename_column :medecins, :adress, :adresse
  end
end
