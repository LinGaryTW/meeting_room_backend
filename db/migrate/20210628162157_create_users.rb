class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.integer :meet_detail_id

      t.timestamps
    end
  end
end
