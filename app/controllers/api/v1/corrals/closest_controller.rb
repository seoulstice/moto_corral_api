module Api
  module V1
    module Corrals
      class ClosestController < ApplicationController
        def show
          render json: Corral.closest_corral(search_params)
        end

        def index
          render json: Corral.num_closest_corrals(search_params)
        end

        private

        def search_params
          params.permit(:origin_lat, :origin_long, :amount)
        end
      end
    end
  end
end
