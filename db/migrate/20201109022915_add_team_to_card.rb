class AddTeamToCard < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :teams, null: false, foreign_key: true
  end
end
