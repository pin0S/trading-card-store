class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #:trackable

  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, presence: true, length: { maximum: 50, 
    too_long: "%{count} characters is the maximum allowed" } 

  # has_many :ratings
  has_many :cards, dependent: :destroy, foreign_key: :seller_id
  has_many :orders

  has_many :sales, class_name: 'Order', foreign_key: :seller_id
  has_many :purchases, class_name: 'Order', foreign_key: :buyer_id
  has_many :sold_cards, through: :sales, source: :card
  has_many :purchased_cards, through: :purchases, source: :card
  
end
 