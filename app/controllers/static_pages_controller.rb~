class StaticPagesController < ApplicationController
  def home
  	if signed_in?
		@micropost = current_user.microposts.build
		@feed_items = current_user.feed.paginate(:page => params[:page])
  end

  def help
 	@title = "Help"
  end
    
  def about
  	@title = "About Us"
  end
  
  def contact
  end
end
