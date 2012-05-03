class MicropostsController < ApplicationController
  before_filter :signed_in_user, :only => [:create, :destroy]

  def index
  end

  def create
  	@microposts = current_user.microposts.build(params[:micropost])
  	if @microposts.save
  		flash[:success] = "Micropost created!"
  		redirect_to root_path
  	else
  		render 'static_pages/home'
  	end
  end

  def destroy
  end
end
