class UsersController < ApplicationController

  def index
  @users = User.paginate(page: params[:page])
  end

      def show
        @user = User.find(params[:id])
       @microposts = @user.microposts.paginate(page: params[:page])
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
      sign_in @user
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
    def signed_in_user
      unless signed_in?
    store_location
    redirect_to signin_url, notice: "Please sign in."
  end

end
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
end

   


end