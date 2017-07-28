class Cuisine < ActiveRecord::Base
  belongs_to :restaurant
  has_one :rating

  def num_rates
  	return Rating.where(cuisine: self).length
  end	

  def average_rates
  	total = 0
  	count = 0
  	Rating.where(cuisine: self).each do |rating|
  		total = total + (rating.num_stars*1.0)/2
  		count = count + 1
  	end	
  	return (((total*10)/count).ceil)/10.round(1)
  end
end
