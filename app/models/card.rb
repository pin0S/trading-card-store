class Card < ApplicationRecord
  belongs_to :user

  enum condition: {'Graded': 0, 'Brand New': 1, 'Like New': 2, 'Used': 3, 'Other': 4}
  enum manufacturer: {'National Treasures': 0, 'Panini': 1, 'Donruss Optic': 2}


end
