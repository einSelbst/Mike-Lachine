class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: true

  validates :user, presence: true
  validates :post, presence: true
end
