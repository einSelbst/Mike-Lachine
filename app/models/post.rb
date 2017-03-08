class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :user, presence: true
  validates :title, presence: true # max length?
  validates :content, presence: true # max length?

end
