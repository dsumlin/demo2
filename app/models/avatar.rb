class Avatar < ActiveRecord::Base
    # attr_accessible :title, :body
    belongs_to :micropost
    belongs_to :feed_item
end