class RatingsController < ApplicationController
	before_action :authenticate_user!

	def add_rating cuisine
		@count = params[:which]
		rating = Rating.where(cuisine: cuisine, user: current_user).first
		if !rating
			rating = Rating.new(cuisine: cuisine, user: current_user)
		end
		rating.num_stars = @count.to_i
		rating.save!

		respond_to do |format|
			format.js {}
		end	

	end	

end	