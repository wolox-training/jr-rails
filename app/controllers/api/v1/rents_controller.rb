module Api
  module V1
    class RentsController < ApiController
      include Wor::Paginate
      def index
        render_paginated Rent
      end

      def create
        rent = Rent.new(rent_params)

        if rent.save
          render json: rent
        else
          render json: { error: "The rent wasn't saved" }, status: :unprocessable_entity
        end
      end

      private

      def rent_params
        params.require(:rent).permit(:user_id, :book_id, :from, :to)
      end
    end
  end
end
