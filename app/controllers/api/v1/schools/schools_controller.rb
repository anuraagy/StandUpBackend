class Api::V1::Schools::SchoolsController < ApplicationController
  def index
    render :json => School.all
  end
end
