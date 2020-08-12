class UsersController < ApplicationController
    
    def new
        @user=User.new
    end

    def edit
        @user=User.find(params[:id])
        @user.update!(user_params)

         redirect_to new_user_path
          

    end
    def create
      @user = User.new(user_params)
    
      if @user.save
        redirect_to new_user_path
      else
        render :new
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :name, :password
      )
    end
end
