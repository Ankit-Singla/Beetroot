class BookmarksController < ApplicationController
	before_action :authenticate_user!

	def toggle_bookmark
		@restaurant = Restaurant.find(params[:restaurant])
		bookmark = Bookmark.where(user: current_user, restaurant: @restaurant).first
		@is_bookmarked = false
		if bookmark
			bookmark.destroy!
			@is_bookmarked = false	
		else
			Bookmark.create(user: current_user, restaurant: @restaurant)
			@is_bookmarked = true
		end

		respond_to do |format|
			format.js {}
		end
		
	end
end	