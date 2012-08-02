class CreateFeedItems < ActiveRecord::Migration
  def change
    create_table :feed_items do |t|

      t.timestamps
    end
  end
end
