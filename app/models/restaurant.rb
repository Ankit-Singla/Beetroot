class Restaurant < ActiveRecord::Base
  has_many :cuisines
  has_many :bookmarks
  has_many :been_heres
  has_many :reservations
  validates_presence_of :name

	def is_bookmarked user_id,restaurant
    if Bookmark.where(user: user_id, restaurant: restaurant).count > 0
      return true
    else
      return false
    end    
  end

  def bookmark_icon user_id
    if is_bookmarked user_id,self
      return "<i class=\"fa fa-bookmark\" aria-hidden=\"true\"></i>"
    else
      return "<i class=\"fa fa-bookmark-o\" aria-hidden=\"true\"></i>"
    end
  end   

  def is_beenhere user_id, restaurant
    if BeenHere.where(user: user_id, restaurant: restaurant).count > 0
      return true
    else
      return false
    end    
  end

  def beenhere_icon user_id
    if is_beenhere user_id, self
      return "<i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i>"
    else
      return "<i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i>"
    end
  end


  def rating_icon user_id, cuisine_id, count
    rating = Rating.where(user_id: user_id, cuisine: cuisine_id).first
    ratingStars = 0
    if !rating
      ratingStars = -1
      # rating = Rating.create(user: user_id, cuisine: cuisine_id)
    else
      ratingStars = rating.num_stars
    end  

    if count <= ratingStars
      return "<i class=\"fa fa-star-o\" aria-hidden=\"true\"></i>"
    else
      return "<i class=\"fa fa-star\" aria-hidden=\"true\"></i>"
    end    

    # respond_to do |format|
    #   format.js {}
    # end  
  end  

  def rating_text user_id, cuisine_id
    rating = Rating.where(user_id: user_id, cuisine: cuisine_id).first
    if rating
      return "Rated #{rating.num_stars/2}"
    else
      return "Rate"
    end    
  end  

  def average_rating
    total = 0
    count = 0

    Cuisine.where(restaurant: self).each do |cuisine|
      total = total + (cuisine.rating.num_stars*1.0)/2
      count = count + 1
    end
    # Cuisine.where(restaurant: self).pluck(:rating).each do |cuisine_rating|
    #   total = total + (cuisine_rating.num_stars*1.0)/2
    #   count = count + 1
    # end

    return (((total*10)/count).ceil)/10.round(1)
  end

  def num_ratings
    total = 0
    Cuisine.where(restaurant: self).each do |cuisine|
      total = total + cuisine.num_rates
    end
    return total
  end  

end
