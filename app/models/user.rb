class User < ActiveRecord::Base
has_many :user_islands, dependent: :destroy
has_many :islands, through: :user_islands

validates :name, presence: true
end
