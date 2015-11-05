class UsersController < ApplicationController
  def new
    
  end
  def show
    
  end
  def create   
    @a=User.find_by(params.require(:user).permit(:name))
    if @a == nil
       @user=User.create(params.require(:user).permit(:name,:password,:shop))
       if @user.shop == 'normal' 
          render 'show'
       else
          
       end      
    else 
      render 'new'
    end  
  end
end
