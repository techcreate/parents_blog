class SessionsController < ApplicationController
def new
end

def create
	user = User.find_by_email(params[:email])

	
		session[:user_id] = user.id 
		session[:user_email] = user.email
		redirect_to "/users/index" 
	else
		flash[:errors] = ["Invalid combination"]
		
	end
	end

def destroy
	session[:user_id] = nil
	redirect_to new_session_path
end




