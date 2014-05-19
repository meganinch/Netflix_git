class UsersController < ApplicationController
    def new  
      @user = User.new  
    end 

    # POST users
    def create  
      @user = User.new(user_params)  
      if @user.save  
        redirect_to :sign, :notice => "Signed up!"  
      else  
        render "new"  
      end  
    end 
		
	def login  
  
  end  
      
  def process_login  

    user = User.authenticate(params[:email], params[:password])  
  
   if user  
    
      session[:user_id] = user.id  
    
      redirect_to :my_account, :notice => "Logged in!"  
    
   else  
   
      flash.now.alert = "Invalid email or password"  
   
      render "login"  
   
    end  

  end  
  
  def my_account
     
      if session[:user_id] != nil
			
		 @authed = 0
         @sessName = User.find(session[:user_id]).email
		 
		 
		 if @sessName == "admin"
			@authed = 1
			@test = User.all
		end
     
      else
      
         @sessName = "Guest"
      
      end
  
  end
  
  def logout
  session[:user_id] = nil
  redirect_to :log_in , :notice => "Logged out!"
end 

protected
    
    def login_required
      return true if User.find_by_id(session[:user_id])
      access_denied
      return false
    end
    def access_denied
      flash[:error] = 'Oops. You need to login before you can view that page.'
      redirect_to :log_in
    end
	
		
	private
	def user_params
		params.require(:user).permit(:email, :password_hash, :password_salt, :password, :password_confirmation)
	end
	
end

