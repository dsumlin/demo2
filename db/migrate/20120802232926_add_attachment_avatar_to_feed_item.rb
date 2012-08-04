class AddAttachmentAvatarToFeedItem < ActiveRecord::Migration
  def self.up
    add_column :feed_items, :avatar_file_name, :string
    add_column :feed_items, :avatar_content_type, :string
    add_column :feed_items, :avatar_file_size, :integer
    add_column :feed_items, :avatar_updated_at, :datetime
  end

  def self.down
    remove_column :feed_items, :avatar_file_name
    remove_column :feed_items, :avatar_content_type
    remove_column :feed_items, :avatar_file_size
    remove_column :feed_items, :avatar_updated_at
  end
end
