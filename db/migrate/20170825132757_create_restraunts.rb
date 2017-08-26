class CreateRestraunts < ActiveRecord::Migration[5.1]
  def change
    create_table :restraunts do |t|
      t.string :title
      t.string :phone
      t.string :address
      t.decimal :cost
      t.integer :heads
      t.string :image_url
      t.references :cuisine, foreign_key: true

      t.timestamps
    end
  end
end
