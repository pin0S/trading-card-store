class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :description
      t.string :graded
      t.integer :condition
      t.integer :season
      t.integer :manufacturer
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
