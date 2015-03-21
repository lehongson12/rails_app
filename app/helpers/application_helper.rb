module ApplicationHelper
	def title
		base_title = "Web Development"
		if @title.nil?
			base_title
		else
			"#{@title} | #{base_title}"			
		end
	end
end
