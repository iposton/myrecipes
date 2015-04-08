class ReviewsController < ApplicationController
before_action :admin_user, only: :destroy
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
	
	end

	def update
		if @review.update(review_params)
			flash[:success] = "Your Review Was Updated Tastefully!"
			redirect_to recipe_path(@recipe)
		else
			render :edit
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
end