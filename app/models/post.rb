class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :user

  has_many :likes
  has_many :liked_by, through: :likes, source: :user

end
