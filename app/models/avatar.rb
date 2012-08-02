class Avatar < ActiveRecord::Base
    # attr_accessible :title, :body
    belongs_to :micropost
end