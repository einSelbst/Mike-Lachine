class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :user, presence: true
  validates :title, presence: true # max length?
  validates :content, presence: true # max length?

  def self.order_by_day_and_likes
    Post.order("date_trunc('day', created_at) DESC, likes_count DESC")
  end
end
