class Review < ActiveRecord::Base
  validates :body,        presence: true
  validates :restaurant_id, presence: true
  belongs_to :restaurant
  belongs_to :user
end
