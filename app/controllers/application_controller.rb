class ApplicationController < ActionController::API
    include ActionController::Cookies


    def hello_world
        # session[:count] ||= 0
        # session[:count] += 1
        # session[:count] = (session[:count] || 0) + 1
        cookies[:count] ||= 0
        cookies[:count] = cookies[:count].to_i + 1
        # byebug
        render json: { count: cookies[:count] }
    end
end
