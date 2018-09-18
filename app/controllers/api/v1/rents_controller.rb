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
          render json: { message: 'The rent was created successfully',
                         data: rent }
        else
          render json: { message: "The rent wasn't created, an error aborted the operation",
                         data: rent.errors }
        end
      end

      private

      def rent_params
        params.permit(:user_id, :book_id, :from, :to)
      end
    end
  end
end
