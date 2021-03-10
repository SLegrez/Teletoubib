class AddNomToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :nom, :string
  end
end
