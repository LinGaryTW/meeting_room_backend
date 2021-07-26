class CreateMeetDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :meet_details do |t|
      t.text :meeting_room
      t.string :start
      t.string :end
      t.date :meeting_date

      t.timestamps
    end
  end
end
