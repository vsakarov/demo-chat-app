class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :chatter_id

      t.timestamps
    end
    add_index :rooms, :chatter_id
  end
end
