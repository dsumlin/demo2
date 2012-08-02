class FeedItem < ActiveRecord::Base
    
    attr_accessible :avatar
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    attr_accessor :avatar_file_name
end
