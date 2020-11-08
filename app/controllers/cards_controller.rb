class CardsController < ApplicationController

    def index
        @cards = Card.all
    end

    def new
    end

    def create
        @card = Card.new(params(card_params))

        if @card.save
            redirect_to @card
        else
            render 'new'
        end
    end

    def show
        @card = Card.find(params[:id])
    end

    def edit
        @card = Card.find(params[:id])
    end


    private
        def card_params
            params.require(:card).permit(:title, :description,
            :condition, :season, :manufacturer, :price)
        end
end
