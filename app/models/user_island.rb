class UserIsland < ActiveRecord::Base
	belongs_to :User
  belongs_to :island
end
