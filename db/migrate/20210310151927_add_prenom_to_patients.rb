class AddPrenomToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :prenom, :string
  end
end
