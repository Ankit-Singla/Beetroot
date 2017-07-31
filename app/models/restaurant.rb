class Restaurant < ActiveRecord::Base
  has_many :cuisines
  has_many :bookmarks
  has_many :been_heres
  has_many :reservations
  validates_presence_of :name

  # abhi wo case handle karna bacha hai jisme user logged in nahi hai
  # i think front-end pe hi (ya view file mien hi) check kr lena chahiye aur
  # uske according koi suitable popup ya noty-fication de deni chahiye  

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


  def is_liked user_id,review
    if Like.where(user: user_id, review: review).count > 0
      return true
    else
      return false
    end    
  end

  def like_icon user_id, review
    if is_liked user_id, review
      return "<i class=\"fa fa-thumbs-up\" aria-hidden=\"true\"></i>"
    else
      return "<i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>"
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

  def review_text user_id
    if Review.where(user: User.find_by_id(user_id)).count <= 1
      return "Review"
    else
      return "Reviews"
    end
  end   

  def followers_text user_id
    if FollowMapping.where(followee_id: user_id).count == 1
      return "Follower"
    else
      return "Followers"
    end
  end    

  def like_text review_id
    if Like.where(review: review_id).count == 1
      return "Like"
    else
      return "Likes"
    end
  end    

  def average_rating
    total = 0
    count = 0

    if Cuisine.where(restaurant: self).length == 0
      return 0.0
    else  

      Cuisine.where(restaurant: self).each do |cuisine|

        if cuisine.rating
          total = total + (cuisine.rating.num_stars*1.0)/2
        end
            
        count = count + 1
      end
      return (((total*10)/count).ceil)/10.round(1)
    end  
  end

  def num_ratings
    total = 0
    Cuisine.where(restaurant: self).each do |cuisine|
      total = total + cuisine.num_rates
    end
    return total
  end  

end
