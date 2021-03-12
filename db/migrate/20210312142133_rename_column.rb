class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :meetings, :type, :genre
  end
end
