class CardsController < ApplicationController

    def index
        @cards = Card.all
    end

    def create
        @card = Card.new(card_params)

        if @card.save
            redirect_to @card
        else
            render 'new'
        end
    end

    def new
        @card = Card.new
        @seasons = Season.all
        @teams = Team.all
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
        @article.destroy

        redirect_to cards_path
    end
    


    private
        def card_params
            params.require(:card).permit(:title, :description, :condition, :season, :manufacturer, :price)
        end
end
