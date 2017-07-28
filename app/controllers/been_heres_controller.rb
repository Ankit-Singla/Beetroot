class BeenHeresController < ApplicationController
	before_action :authenticate_user!
	validates :restaurant_id, :presence => true

	def toggle_beenhere
		@restaurant = Restaurant.find(params[:restaurant])
		beenhere = BeenHere.where(user: current_user, restaurant: @restaurant).first
		@is_beenhere = false
		if beenhere
			beenhere.destroy!
			@is_beenhere = false	
		else
			BeenHere.create(user: current_user, restaurant: @restaurant)
			@is_beenhere = true
		end

		respond_to do |format|
			format.js {}
		end
		
	end
end	