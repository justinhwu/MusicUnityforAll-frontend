class CreatePlaylistMixclouds < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_mixclouds do |t|
      t.integer :playlist_id
      t.integer :mixcloud_id

      t.timestamps
    end
  end
end
