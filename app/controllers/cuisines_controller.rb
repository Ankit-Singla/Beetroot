class CuisinesController < ApplicationController
	validates :presence, :name => true, :restaurant_id => true
end	