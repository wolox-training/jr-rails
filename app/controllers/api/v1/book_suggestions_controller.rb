# frozen_string_literal: true

module Api
  module V1
    class BookSuggestionsController < ApiController
      skip_before_action :current_user, :authenticate_request

      def create
        suggestion = BookSuggestion.new(suggestion_params)

        if suggestion.save
          render json: suggestion, status: :created
        else
          render json: { error: "The suggestion wasn't created" }, status: :unprocessable_entity
        end
      end

      private

      def suggestion_params
        params.require(:book_suggestion)
              .permit(:editorial, :price, :author, :title, :link, :publisher,
                      :year, :user_id)
      end
    end
  end
end
