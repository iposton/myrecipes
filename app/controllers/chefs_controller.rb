class ChefsController < ApplicationController 
	before_action :set_chef, only: [:edit, :update, :show]
	before_action :require_same_user, only: [:edit, :update]

	def index
		@chefs = Chef.paginate(page: params[:page], per_page: 3)
	end

	def new
		@chef = Chef.new
	end

	def create 
		@chef = Chef.new(chef_params)
		if @chef.save
			flash[:success] = "Your account has been created succesfully"
			session[:chef_id] = @chef.id
			redirect_to recipes_path
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		
		if @chef.update(chef_params)
			flash[:success] = "Your account has been updated succesfully"
			redirect_to chef_path(@chef) 
		else
			render 'edit'
		end
	end

	def show
		@recipes = @chef.recipes.paginate(page: params[:page], per_page: 3)
		@review = Review.new
	end

	private
	def chef_params
		params.require(:chef).permit(:chefname, :email, :password)
	end

	def set_chef
		@chef = Chef.find(params[:id])
	end

	def require_same_user
		if current_user != @chef
			flash[:danger] = "You can only edit your own profile"
			redirect_to root_path
		end
	end
end