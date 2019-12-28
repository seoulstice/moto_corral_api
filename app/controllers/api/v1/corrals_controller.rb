module Api
  module V1
    class CorralsController < ApplicationController
      def show
        render json: Corral.find(params[:id])
      end

      def index
        render json: Corral.all
      end
    end
  end
end
