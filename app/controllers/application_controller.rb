class ApplicationController < ActionController::Base

    before_action :authenticate_user!
    layout :layout_by_resource

    helper_method :current_account
    helper_method :current_date

    def current_account
        @current_account ||= current_user.account
        @current_account
    end

    protected
    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end
end
