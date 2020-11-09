class RemoveSeasonFromCard < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :season, :integer
  end
end
