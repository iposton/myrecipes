class StylesController < ApplicationController 
	before_action :require_user, except: [:show]

	def show
		@style = Style.find(params[:id])
		@recipes = @style.recipes.paginate(page: params[:page], per_page: 4)
	end

	def new
		@style = Style.new
	end

	def create
		@style = Style.new(style_params)
		if @style.save
			flash[:success] = "Style created succesfully."
			redirect_to recipes_path
		else
			render 'new'
		end
	end

	private
	def style_params
		params.require(:style).permit(:name)
	end
end