class SessionsController < ApplicationController
	def new
	end
	
	def index
	end
	
	def create
	  user = User.find_by_email(params[:session][:email])
	  if user && user.authenticate(params[:session][:password])
		sign_in user
		redirect_to user
	  else
		flash.now[:error] = 'Invalid email/password combination'
		render 'new'
	  end
	end
	
	def destroy
		sign_out
		redirect_to_root_path
	end
end
