class UsersController < ApplicationController

    def index
    end

    def account
        @user = current_user
        @user_listing = current_user.cards
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
