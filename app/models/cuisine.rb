class Cuisine < ActiveRecord::Base
  belongs_to :restaurant
  has_one :rating
  has_many :reviews

  validates_presence_of :name, :restaurant_id


  def review_feed
    reviews = Review.where(cuisine: id)
    Review.where(id: reviews).order(created_at: :desc)
  end  

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
    if count == 0
      return 0.0
    else  
      return (((total*10)/count).ceil)/10.round(1)
    end  
  end
end
