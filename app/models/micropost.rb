class Micropost < ApplicationRecord
  belongs_to :user
  has_many :fav_microposts
  has_many :fusers, through: :fav_microposts, source: :user
  validates :content, presence: true, length: {maximum: 255}

end
