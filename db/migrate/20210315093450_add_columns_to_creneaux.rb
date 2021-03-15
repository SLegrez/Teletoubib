class AddColumnsToCreneaux < ActiveRecord::Migration[6.0]
  def change
    add_column :creneaus, :date, :date
    add_column :creneaus, :debut, :datetime
    add_column :creneaus, :fin, :datetime
  end
end
