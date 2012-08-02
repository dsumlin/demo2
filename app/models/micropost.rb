class Micropost < ActiveRecord::Base
    
    
    
    
    attr_accessible :content
    
    
    belongs_to :user
    attr_accessible :avatar
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    attr_accessor :avatar_file_name
    
    
    validates :content, :presence => true, :length => { :maximum => 500}
    validates :user_id, :presence => true

    
    default_scope :order => 'microposts.created_at DESC'
    
end
