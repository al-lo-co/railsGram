module ApplicationHelper
	def body_classes
    	"#{controller_name} #{action_name}"
  	end
end
