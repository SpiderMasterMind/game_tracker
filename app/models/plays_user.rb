class PlaysUser < ActiveRecord::Base
	belongs_to :play
	belongs_to :user
end
