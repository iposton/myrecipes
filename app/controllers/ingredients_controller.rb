class IngredientsController < ApplicationController 
	before_action :require_user, except: [:show]

	def show
		@ingredient = Ingredient.find(params[:id])
		@recipes = @ingredient.recipes.paginate(page: params[:page], per_page: 4)
	end

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ing_params)

		if @ingredient.save
			flash[:success] = "Ingredient created succesfully."
			redirect_to recipes_path
		else
			render 'new'
		end

	end

	private
	def ing_params
		params.require(:ingredient).permit(:name)
	end
end