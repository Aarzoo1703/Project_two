class AccountsController < ApplicationController
    def signup
        @user = User.new
        if request.post?
            @user = User.new(user_params)
            if @user.save
      
PostmanMailer.signup_alert(@user).deliver
redirect_to :action => "login"
else
    flash[:notice] = "Invalid email/password"
    render :action => "signup"
end
end
end
def login
    if request.post?
        @user=User.authenticate(params[:email],params[:password])
        if @user
            session[:user]=@user.id
            redirect_to :action=>"dashboard"
        else
            render :action=>"login"
        end
    end
end

def logout
    session.delete(:user)
    redirect_to accounts_login_url
end

private
def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :mobile, :date_of_birth, :password, :encrypted_password)
end
end