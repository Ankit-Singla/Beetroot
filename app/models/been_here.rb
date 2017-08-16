class BeenHere < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates_presence_of :restaurant_id
end
