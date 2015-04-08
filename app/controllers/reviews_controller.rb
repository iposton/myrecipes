class ReviewsController < ApplicationController
# before_action :admin_user, :current_user, only: :destroy
# before_action :require_same_user, only: [:edit, :update]
	# def show
	# 	@review = Review.find(params[:id])
	# end

	# def new
	# 	@review = Review.new
	# end

 def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.build(review_params)
    @review.chef = current_user

		if @review.save
			flash[:success] = "Review was created succesfully"
    	redirect_to recipe_path(@recipe)
    else
			flash[:danger] = "The review could not be saved"
			redirect_to :back
		end
 	end

 	def edit
 		@recipe = Recipe.find(params[:recipe_id])
	  @review = Review.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:recipe_id])
    @review = Review.find(params[:id])
		if @review.update(review_params)
			flash[:success] = "Your Review Was Updated Tastefully!"
			redirect_to recipe_path(@recipe)
		else
			render 'edit'
		end	
	end

  def destroy
		Review.find(params[:id]).destroy
		flash[:success] = "Review Deleted"
		redirect_to recipes_path(@recipe)
	end
 
 
  private
    def review_params
      params.require(:review).permit(:body)
    end
    def admin_user
			redirect_to recipes_path unless current_user.admin?
	  end

	  def require_same_user
		if current_user != review.chef and !current_user.admin?
			flash[:danger] = "You can only edit your own recipes"
			redirect_to recipes_path
		end
	end
end