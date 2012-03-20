module ApplicationHelper

#Return a title


    def title 
        base_title = "Dennis On Ruby On Rails"
        if @title.nil?
            base_title
            else
            "#{base_title} | #{@title}"
        end
    end
    
    def logo
        
        image_tag("banner.tiff", :alt => "dennissumlin.com", :class => "round")
        
        end
    
    
end
