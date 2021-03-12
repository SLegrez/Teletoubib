class AddApprovedToMedecin < ActiveRecord::Migration[6.0]
  def self.up
    add_column :medecins, :approved, :boolean, :default => false, :null => false
    add_index  :medecins, :approved
  end

  def self.down
    remove_index  :medecins, :approved
    remove_column :medecins, :approved
  end
end
