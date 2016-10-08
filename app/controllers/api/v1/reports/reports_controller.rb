class Api::V1::Reports::ReportsController < ApplicationController
  def create
    @report = Report.new(:title => params[:title], :description => params[:description])
    @report.image = params[:image] if params[:image]

    if @report.save
      render :json => @report.to_json
    else
      render :json => {:status => "error"}
    end
  end
end
