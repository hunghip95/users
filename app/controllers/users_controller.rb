class UsersController < ApplicationController
  def new
    
  end
  def show
    
  end
  def create   
    @a = User.find_by(params.require(:user).permit(:name))
    if (!@a )
       @user = User.new(params.require(:user).permit(:name,:password,:shop))
       if @user.save
         if @user.shop == 'normal' 
            render 'show'
         else
         end
       else
         @user.save
         if @user.errors[:name] != []
            @error = 'Name is invalid'
         else
           @error = 'Password is too short'
         end
         render 'new'  
       end    
    else 
      @error = 'User existed'
      render 'new'
    end  
  end
end
