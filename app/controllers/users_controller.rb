class UsersController < ApplicationController
load_and_authorize_resource
  def index
      @users = User.paginate(page: params[:page], per_page: 3)
  end
end
