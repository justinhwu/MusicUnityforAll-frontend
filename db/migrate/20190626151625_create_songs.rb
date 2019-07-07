class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :videoId
      t.string :title
      t.string :publishedAt
      t.string :channelTitle
      t.string :description

      t.timestamps
    end
  end
end
