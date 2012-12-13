class UsersController < ApplicationController
before_filter :authenticate_user!, :only => [:show]
  before_filter do 
   redirect_to root_path, :alert => "You are not authorized to perform such an action"  unless current_user.admin?
  end
  def show
      @users = User.paginate(page: params[:page], per_page: 3)
  end
end
