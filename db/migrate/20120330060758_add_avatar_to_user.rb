class AddAvatarToUser < ActiveRecord::Migration
    def self.up
    add_column :user, :avatar_file_name, :string
    add_column :user, :avatar_content_type, :string
    add_column :user, :avatar_file_size, :integer
end
def self.down
remove_column :user, :avatar_file_name
remove_column :user, :avatar_content_type
remove_column :user, :avatar_file_size
end
end
