class APIController < ApplicationController
  before_action :authenticate_request

  attr_reader :current_tenant
  helper_method :current_tenant

private
  def authenticate_request
    @current_tenant = AuthenticateApiRequest.call(request.headers['Authorization'])
    render json: { error: 'Unauthorized Access!' }, status: 401 unless @current_tenant
  end
end