class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :details]
  respond_to :html, :js, :json

  def details
    respond_to do |format|
      format.js{
        offset = params[:offset]
        if offset
          offset = offset.to_i
        else
          offset = 0
        end

        cuis = Cuisine.where(id: params[:cuisine].to_i).first

        @new_offset = 2*(offset - 1)
        @show_load_more = offset < cuis.review_feed.count
        @feed = cuis.review_feed.limit(offset-2).offset(offset)
      }
      format.html{

      }
    end 
  end  

  def ankiting
    @count = params[:which]
    @id = params[:id]
    respond_to do |format|
      format.html { render :template => '/restaurants/details', :locals => { :which => @count, :@restaurant => Restaurant.where(id: @id.to_i).first } }
      format.js{ }
    end      
  end

  # def ankiting
  #   return params[:which]    
  # end

  def handleClick
    # @review = Review.new
    @cuisine = params[:cuisine].to_i
    @restaurant = params[:restaurant_id].to_i
    respond_to do |format|
      format.js {}
    end 
  end 



  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end      

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :locality, :phone_no, :address)
    end
end
