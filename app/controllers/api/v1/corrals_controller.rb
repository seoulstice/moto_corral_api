class Api::V1::CorralsController < ApplicationController

  def show
    render json: Corral.find(params[:id])
  end

  def index
    render json: Corral.all
  end

end