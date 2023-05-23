class SessionsController < Devise::SessionsController
  def create
    super { @token = current_token }
  end

  private

  def current_token
    request.env['warden-jwt_auth.token']
  end

  def respond_to_on_destroy
    current_user ? log_out_success : log_out_failure
  end

  def log_out_success
    render json: { message: "Logged out." }, status: :ok
  end

  def log_out_failure
    render json: { message: "Logged out failure."}, status: :unauthorized
  end
end