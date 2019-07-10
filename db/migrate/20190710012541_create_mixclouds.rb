class CreateMixclouds < ActiveRecord::Migration[6.0]
  def change
    create_table :mixclouds do |t|
      t.string :username
      t.string :url
      t.string :name
      t.string :created_time
      t.boolean :isMixcloud, default: true

      t.timestamps
    end
  end
end
