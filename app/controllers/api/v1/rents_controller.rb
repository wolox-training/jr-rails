module Api
  module V1
    class RentsController < ApiController
      include Wor::Paginate
      def index
        render_paginated Rent
      end

      def create
        render json: Rent.create(params[:user], params[:book])
      end
    end
  end
end
