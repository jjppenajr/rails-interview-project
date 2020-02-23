class APIController < ApplicationController
  before_action :authenticate_request

  attr_reader :current_tenant
  helper_method :current_tenant

private
  def authenticate_request
    api_key = Rails.env.test? ?
      request.headers.try(:[],'rack.request.query_hash').try(:[],'headers').try(:[],'Authorization') :
      request.headers['Authorization']

    @current_tenant = AuthenticateApiRequest.call(api_key).result
    render json: { error: 'Unauthorized Access!' }, status: 401 unless @current_tenant
  end

  def add_request_count
    # current_tenant.add_request_count
  end
end