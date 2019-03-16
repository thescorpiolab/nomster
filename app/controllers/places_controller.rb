class PlacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@places = Place.all
	end

	def index
 		 @places = Place.order("name").page(params[:page]).per_page(1)
	end

	def new
		@place = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end	

	private

	def place_params
		params.require(:place).permit(:name, :description, :address)
	end	

	def create
		current_user.places.create(place_params)
		redirect_to root_path
	end	

end
