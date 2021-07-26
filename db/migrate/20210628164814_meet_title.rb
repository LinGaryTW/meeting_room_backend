class MeetTitle < ActiveRecord::Migration[6.0]
  def change
    add_column :meet_details, :meeting_topic, :text
  end
end
