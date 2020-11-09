class AddSeasonToCards < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :seasons, null: false, foreign_key: true
  end
end
