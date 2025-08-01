class ApplicationController < ActionController::API
   include ActionController::Cookies

    def not_found
      render json: { error: "Endpoint not found" }, status: 404
    end
end
