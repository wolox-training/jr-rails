# frozen_string_literal: true

class RentsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: @user.try(:id))
    end
  end

  def index?
    owner_of_the_record?
  end

  private

  def owner_of_the_record?
    user == @record.user
  end
end
