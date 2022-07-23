class CreateSurfboards < ActiveRecord::Migration[6.1]
  def change
    create_table :surfboards do |t|
      t.string :city
      t.float :price_day
      t.string :brand
      t.text :detail
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
