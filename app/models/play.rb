class Play < ActiveRecord::Base
	has_many :plays_users
	has_many :users, through: :plays_users
	belongs_to :game
end
