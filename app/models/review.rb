class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :cuisine
  validates_presence_of :rating_id
  validates_uniqueness_of :user, scope: :cuisine
end

