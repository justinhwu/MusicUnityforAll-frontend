class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :genre
      t.integer :playtime
      t.date :release_date

      t.timestamps
    end
  end
end
