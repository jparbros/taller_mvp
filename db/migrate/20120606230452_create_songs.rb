class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :url
      t.string :genere

      t.timestamps
    end
  end
end
