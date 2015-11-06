class LoginController < ApplicationController
  def login
    
  end
  def check
    @user=User.find_by(params.require(:user).permit(:name))
    if @user
      @b=params.require(:user).permit(:password)
      if @user.password == @b[:password]
        render 'show'
      else
        @error = 'Your password is wrong'
        render 'login'  
      end
    else
      @error = 'Wrong account'
      render 'login'
    end
  end
  def show
    
  end
end
