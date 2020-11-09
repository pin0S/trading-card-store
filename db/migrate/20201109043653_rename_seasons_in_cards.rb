class RenameSeasonsInCards < ActiveRecord::Migration[6.0]
  def change
    rename_column :cards, :seasons_id, :season_id
    rename_column :cards, :teams_id, :team_id
  end
end
