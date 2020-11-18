class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)

        card_id = payment.metadata.card_id
        buyer_id = payment.metadata.user_id
        seller_id = payment.metadata.seller_id
        
        card = Card.find(card_id)

        card.purchased = true
        card.buyer_id = buyer_id
        card.save
        
        order = Order.create(buyer: buyer_id, card_id: card_id, seller_id: seller_id)
        order.save
    end


    def success                
        
    end
        

end
