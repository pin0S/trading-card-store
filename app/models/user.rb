class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #:trackable

  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, presence: true, length: { maximum: 50, 
    too_long: "%{count} characters is the maximum allowed" } 

  has_many :ratings
  has_many :cards, dependent: :destroy
end
