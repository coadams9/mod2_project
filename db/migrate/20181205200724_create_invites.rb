class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.integer :invited_id
      t.integer :inviter_id
      t.integer :game_id
      t.boolean :responded

      t.timestamps
    end
  end
end
