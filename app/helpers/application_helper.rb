module ApplicationHelper
	def format_datetime(dt)
		binding.pry
		dt.strftime("%m/%d/%Y %l:%M%P %Z")
	end
end
