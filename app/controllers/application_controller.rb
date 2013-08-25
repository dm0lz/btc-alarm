class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :allow_cross_domain_access
    before_action :allow_cross_domain
    def allow_cross_domain_access
        response.headers["Access-Control-Allow-Origin"] = "*"
        response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE"
    end
    def allow_cross_domain
    	headers['Access-Control-Allow-Origin'] = 'http://localhost:3000/'
    end
end
