class CardsController < ApplicationController
    before_action :authenticate_user!, only:[:new, :update, :edit, :destroy]

    def index
        @cards = Card.all
    end

    def create
        @card = Card.new(card_params)
        @card.save
       
        if @card.save
            redirect_to @card
        else
            @card.errors.full_messages
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

    def edit
        @card = Card.find(params[:id])

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

    def show
        @card = Card.find(params[:id])

        session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            customer_email: current_user.try(:email),
            line_items: [{
                name: @card.title,
                # images: @card.picture,
                amount: (@card.price * 100).to_i,
                currency: 'usd',
                quantity: 1,
            }],
            payment_intent_data: {
                metadata: {
                    card_id: @card.id
                }
            },
            success_url: "#{root_url}payments/success?cardId=#{@card.id}",
            cancel_url: "#{root_url}"
        )

        @session_id = session.id
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
