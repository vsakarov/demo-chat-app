class AddChatterIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :chatter_id, :integer
    add_index :messages, :chatter_id

  end
end
