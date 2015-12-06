class UsersController < ApplicationController

      def show
        @user = User.find(params[:id])
      end

      def new
        @user = User.new
      end

      def edit
    @user = User.find(params[:id])
  end

  
       def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      remember @user
      flash[:success] = "Save"
      redirect_to @user
    else
      render 'edit'
end 
end


      def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
          remember @user      
          flash[:success] = "Welcome to Easy Job!"   
          redirect_to @user  
        else
          render 'new'
        end
      end

      private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end