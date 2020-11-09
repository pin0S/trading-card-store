class RemoveGradedFromCard < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :graded, :string
  end
end
