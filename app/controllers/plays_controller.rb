class PlaysController < ApplicationController

	def new
		@play = Play.new
	end

	def index
	end
	 
	def create
		@play = Play.new(play_params)

		if @play.save
			flash[:notice] = "Play Session Saved!"
			redirect_to root_path
		else 			
			flash[:errors] = "Incorrect players or game info"
			puts new_play_path
			render 'new'
		end


	end

	private

	def play_params
		params.require(:play).permit(:game_id, user_ids: [])
	end

end
