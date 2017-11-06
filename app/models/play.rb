class Play < ActiveRecord::Base
	has_many :plays_users
	has_many :users, through: :plays_users
	belongs_to :game
	# validate :users_cannot_exceed_game_participant_number


	# def users_cannot_exceed_game_participant_number
	# 	if number_of_user_ids > game.participant_number
	# 		errors.add(:players, "too many players for selected game.")
	# 	end

	# end
end
