class AddAttachmentAvatarToMicropost < ActiveRecord::Migration
  def self.up
    add_column :microposts, :avatar_file_name, :string
    add_column :microposts, :avatar_content_type, :string
    add_column :microposts, :avatar_file_size, :integer
    add_column :microposts, :avatar_updated_at, :datetime
  end

  def self.down
    remove_column :microposts, :avatar_file_name
    remove_column :microposts, :avatar_content_type
    remove_column :microposts, :avatar_file_size
    remove_column :microposts, :avatar_updated_at
  end
end
