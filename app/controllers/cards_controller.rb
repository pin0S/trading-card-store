class CardsController < ApplicationController

    def index
        @cards = Card.all
    end

    def create
        @card = Card.new(card_params)
        @card.save!
       
        if @card.save
            redirect_to @card
        else
            @seasons = Season.all
            @teams = Team.all
            render 'new'
        end
    end

    def new
        @card = Card.new
        @seasons = Season.all
        @teams = Team.all
        @manufacturers = Card.manufacturers.keys 
        @condition = Card.conditions.keys
    end

    def update
        @card = Card.find(params[:id])

        if @card.update(card_params)
            redirect_to @card
        else
            render 'edit'
        end
    end

    def edit
        @card = Card.find(params[:id])
    end

    def show
        @card = Card.find(params[:id])
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy

        redirect_to cards_path
    end

    private

        def card_params
            params.require(:card).permit(:title, :description, :condition, 
                :season_id, :manufacturer, :price, :picture, :team_id, 
                :user_id).merge(user: current_user)
        end
end
