class Rating < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :user
  validates_presence_of :cuisine
end
