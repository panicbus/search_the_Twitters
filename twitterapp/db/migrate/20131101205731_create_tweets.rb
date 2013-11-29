class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :handle
      t.string :content
      t.string :time_posted

      t.timestamps
    end
  end
end
