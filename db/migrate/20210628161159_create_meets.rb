class CreateMeets < ActiveRecord::Migration[6.0]
  def change
    create_table :meets do |t|
      t.date :meeting_date
      t.text :meet_room

      t.timestamps
    end
  end
end
