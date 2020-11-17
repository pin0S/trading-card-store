class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)

        card_id = Card.find(payment_intent.metadata.card_id)
        buyer_id = User.find(payment_intent.metadata.buyer_id)
        seller_id = User.find(payment_intent.metadata.seller_id)

        card = Card.find(card_id)

        card.purchased = true
        card.save
        
        order = Order.create(buyer: buyer_id, card_id: card_id, seller_id: seller_id, striperef: payment_intent.id, receipt: payment_intent.charges.data[0].receipt_url)
        order.save
    end

    def success
        def success                
            @card = Item.find(params["itemId"].to_i)
    
            transaction = @card.orders.build buyer_id: current_user.id, seller_id: card.seller.id
            @card.purchased = true
            @card.save
    
            if transaction.save
                render 'success'
            else
                render 'failure'
            end
        end
        
    end

end
