class User < ActiveRecord::Base
	has_many :plays_users	
	has_many :plays, through: :plays_users

	validates :username, presence: true, uniqueness: true
	validates :username, exclusion: { in: %w(admin administrator superuser) }
	validates :password, presence: true, on: :create

	has_secure_password validations: false
end
