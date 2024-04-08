class Api::V1::PlantsController < ApplicationController 
	def index
		facade = PlantsFacade.new
		page_num = params[:page]
		plants = facade.all_plants(page_num)

		render json: PlantsSerializer.new(plants)
	end
end