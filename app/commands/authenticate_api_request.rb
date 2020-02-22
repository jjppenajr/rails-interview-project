class AuthenticateApiRequest
  prepend SimpleCommand
  attr_reader :api_key

  def initialize(api_key)
    @api_key = api_key
  end

  def call
    return error_message("No api_key") if api_key.blank?
    return authenticate
  end

private
  def authenticate
    tenant = Tenant.find_by(api_key: api_key)
    return error_message("Unauthorized Access") if !tenant
    return tenant
  end

  def error_message(message)
    errors.add :message, message
    return nil
  end
end