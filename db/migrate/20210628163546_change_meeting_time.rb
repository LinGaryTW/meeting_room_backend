class ChangeMeetingTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :meet_details, :interval
    add_column :meet_details, :start, :string
    add_column :meet_details, :end, :string
  end
end
