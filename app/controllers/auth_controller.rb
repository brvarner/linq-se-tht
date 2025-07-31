class AuthController < ApplicationController
  def create
    token = create_token()
    session[:auth_token] = token
    render json: token
  end

  def show
    if session[:auth_token]
      render json: session[:auth_token]
    else
      session[:auth_token] = create_token()
      render json: session[:auth_token]
    end
  end

  private

  def create_token
    random_string = SecureRandom.hex
    payload = { data: random_string }
    token = JWT.encode(payload, nil, "none")

    token
  end
end
