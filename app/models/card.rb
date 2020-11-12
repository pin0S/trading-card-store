class Card < ApplicationRecord
  belongs_to :user
  has_one :season  
  has_one :team
  has_one_attached :picture

  enum condition: {graded: 0, brand_new: 1, like_new: 2, used: 3, n_specified: 4}
  enum manufacturer: {upper_deck: 0, panini: 1, topps: 2, other: 3,}

end
