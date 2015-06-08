class User < ActiveRecord::Base
has_many :user_islands, dependent: :destroy
has_many :islands, through: :user_island
end
