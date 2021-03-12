class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :type
      t.datetime :debut
      t.datetime :fin
      t.string :lien_visio

      t.timestamps
    end
  end
end
