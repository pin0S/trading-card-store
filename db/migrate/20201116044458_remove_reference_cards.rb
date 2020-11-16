class RemoveReferenceCards < ActiveRecord::Migration[6.0]
  def change
    remove_reference :cards, :seller, foreign_key: { to_table: :cards }
    remove_reference :cards, :buyer, foreign_key: { to_table: :cards }

  end
end
