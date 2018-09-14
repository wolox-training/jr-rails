module Api
  module V1
    class BooksController < ApiController
      include Wor::Paginate
      def index
        render_paginated BookModel
      end

      def show
        render json: Book.find(params[:id])
      end
    end
  end
end
