class GamesController < ApplicationController

	def new
		# render new 'add game' page
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)

		if @game.save
			flash[:notice] = "Welcome"
			redirect_to root_path
		else 			
			flash[:errors] = "There is a problem with the details you entered."
			render new_game_path
		end


	end

	def game_params
		params.require(:game).permit!
	end




end
