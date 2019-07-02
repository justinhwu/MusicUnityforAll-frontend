class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :description, default: ''
      t.string :image, default: 'https://images.shazam.com/artistart/a41223759_s800b1b5.jpg'
      t.string :genre, default: 'null'
      t.integer :user_id

      t.timestamps
    end
  end
end
