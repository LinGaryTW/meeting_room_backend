class AddMeetName < ActiveRecord::Migration[6.0]
  def change
    drop_table :meet_details
    drop_table :meets
  end
end
