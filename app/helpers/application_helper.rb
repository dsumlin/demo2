module ApplicationHelper

#Return a titl

def title 
base_title = "Dennis on Ruby"
if @titl.nil?
base_title
else
"#{base_title} | #{@title}"
			end
		 end
	end

