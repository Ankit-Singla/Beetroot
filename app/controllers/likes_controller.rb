class LikesController < ApplicationController
	before_action :authenticate_user!

	def toggle_like
		@review = Review.find(params[:review])
		like = Like.where(user: current_user, review: @review).first
		@is_liked = false
		if like
			like.destroy!
			@is_liked = false	
		else
			Like.create(user: current_user, review: @review)
			@is_liked = true
		end

		respond_to do |format|
			format.js {}
		end
		
	end
end	