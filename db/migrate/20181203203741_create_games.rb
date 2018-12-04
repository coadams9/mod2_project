class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :location
      t.datetime :time

      t.timestamps
    end
  end
end
