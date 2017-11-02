class Game < ActiveRecord::Base
	has_many :plays
#	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	#	# do we need on to specify "when: the validation should happen
	#	validation should happen on


end
