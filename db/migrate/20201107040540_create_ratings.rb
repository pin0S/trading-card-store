class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :description
      t.integer :rating
      t.boolean :as_buyer
      t.boolean :as_seller
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
