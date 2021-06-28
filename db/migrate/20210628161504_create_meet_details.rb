class CreateMeetDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :meet_details do |t|
      t.text :interval
      t.references :meet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
