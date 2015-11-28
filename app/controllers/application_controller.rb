class ApplicationController < ActionController::API
  include WardenHelper
  include Pundit

  rescue_from ActiveRecord::RecordNotFound,       with: :not_found
  rescue_from ActionController::ParameterMissing, with: :missing_param_error
  rescue_from Pundit::NotAuthorizedError,         with: :not_authorized

  private

  def not_authorized
    render status: :forbidden, json: ''
  end

  def not_found
    render status: :not_found, json: ''
  end

  def missing_param_error(exception)
    render status: :unprocessable_entity, json: { error: exception.message }
  end
end
