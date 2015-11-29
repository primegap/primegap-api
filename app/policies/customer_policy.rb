class CustomerPolicy < ApplicationPolicy
  attr_reader :user, :customer

  def initialize(user, customer)
    @user     = user
    @customer = customer
  end

  def index?
    user.company_id.present?
  end

  def show?
    has_company?
  end

  def create?
    has_company?
  end

  def update?
    has_company?
  end

  def destroy?
    has_company?
  end

  class Scope < Scope
    def resolve
      scope.where(company_id: user.company_id)
    end
  end

  private

  def has_company?
    user.company_id.present? && customer.company_id == user.company_id
  end
end
