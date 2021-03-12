class AddColumnsToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :patient_id, :integer
    add_column :meetings, :creneau_id, :integer
  end
end
