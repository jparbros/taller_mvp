class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :song_id
      t.integer :tendency

      t.timestamps
    end
  end
end
