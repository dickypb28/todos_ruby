class SessionsController < ApplicationController
    def new

    end

    def create 
        sign_in_as params[:session][:email]
        # session[:current_email] =-
        redirect_to root_path
    end
end