class ApplicationController < ActionController::API
  include Knock::Authenticable

  def ping
    if current_user
      render json: { response: "authorized pong" }
    else
      render json: { response: "unauthorized pong"}
    end
  end
end
