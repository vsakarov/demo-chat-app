class CreateChatters < ActiveRecord::Migration
  def change
    create_table :chatters do |t|

      t.timestamps
    end
  end
end
