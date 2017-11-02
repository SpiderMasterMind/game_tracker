class LandingController < ApplicationController
	def index
		#renders views/thisCOntrollerName
		# render 'standard'
		@plays = Play.order(played_on: :desc).limit(3)
		# render plays, limit 3 by date played
		#
	end


end
