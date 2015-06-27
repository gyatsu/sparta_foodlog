class Restaurant < ActiveRecord::Base
  validates :name,          presence: true
  validates :tel,           presence: true, length: { maximum: 15 }
  validates :address,       presence: true
  validates :url,           presence: true
end
