# frozen_string_literal: true

class RentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: @user.try(:id))
    end
  end

  def index?
    true
  end
end
