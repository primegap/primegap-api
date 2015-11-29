class CustomerPolicy < ApplicationPolicy
  attr_reader :user, :customer

  def initialize(user, customer)
    @user     = user
    @customer = customer
  end

  def index?
    true
  end

  def show?
    customer.company_id == user.company_id
  end

  def create?
    customer.company_id == user.company_id
  end

  def update?
    customer.company_id == user.company_id
  end

  def destroy?
    customer.company_id == user.company_id
  end

  def scope
    Pundit.policy_scope!(user, Customer)
  end

  class Scope < Scope
    def resolve
      scope.where(company_id: user.company_id)
    end
  end
end
