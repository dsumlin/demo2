module ApplicationHelper

#Return a title

def title 
base_title = "Dennis on Ruby"
if @title.nil?
base_title
else
"#{base_title} | #{@title}"
			end
		 end
	end

