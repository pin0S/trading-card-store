class UsersController < ApplicationController

    def account
        
        @cards = current_user.cards.with_attached_picture.paginate(:page => params[:page], :per_page=>8)
    end

    def update
        @user = current_user

        if @user.update(current_user_params)
            redirect_to @user
        else
            render 'edit'
        end
    end

end
