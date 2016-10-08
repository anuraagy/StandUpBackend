class Api::V1::Users::UsersController < ApplicationController
  def index
    render :json => User.find_by(:school => params[:school])
  end
end
