class RatingsController < ApplicationController
	before_action :authenticate_user!

	def add_rating
		cuisine_id = params[:cuisine_id].to_i
		@count = params[:which].to_i
		rating = Rating.where(cuisine: cuisine_id, user: current_user).first
		if !rating
			rating = Rating.new(cuisine_id: cuisine_id, user: current_user)
		end
		rating.num_stars = @count.to_i
		rating.save!

		respond_to do |format|
			format.js {}
		end	
	end	

	def clear_rating
		cuisine_id = params[:cuisine_id].to_i
		rating = Rating.where(cuisine: cuisine_id, user: current_user).first
		if rating
			rating.delete
		end
		
		respond_to do |format|
			format.js {}
		end		
	end	

end	