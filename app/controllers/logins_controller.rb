class LoginsController < ApplicationController
	def new

	end

	def create
		chef = Chef.find_by(email: params[:email])
		if chef && chef.authenticate(params[:password])
			flash[:success] = "You are Logged In!"
			redirect_to recipes_path
			session[:chef_id] = chef.id
		else
			flash.now[:danger] = "Your email address or password does not match."
			render 'new'
		end
	end

	def destroy
		session[:chef_id] = nil
		flash[:success] = "You have logged out"
		redirect_to root_path
	end
end