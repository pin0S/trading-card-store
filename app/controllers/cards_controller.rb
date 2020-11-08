class CardsController < ApplicationController

    def index
        # @cards = Cards.all
    end

    def new
    end

    def create
        @card = Card.new(params(card_params))

        @card.save
        redirect_to @card
    end

    def show
        @card = Card.find(params[:id])
    end


    private
        def card_params
            params.require(:card).permit(:title, :description,
            :condition, :season, :manufacturer, :price)
        end
end
