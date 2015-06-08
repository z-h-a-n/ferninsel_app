class Island < ActiveRecord::Base
	has_many :user_islands, dependent: :destroy
	has_many :users, through: :user_island
	has_many :creatures
end
