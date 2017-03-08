class Post < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true # max length?
  validates :content, presence: true # max length?

end
