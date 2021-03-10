class AddColumnsToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :date_de_naissance, :date
    add_column :patients, :adresse, :text
    add_column :patients, :telephone, :string
    add_column :patients, :code_postal, :string
    add_column :patients, :ville, :string
  end
end
