class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :city
      t.string :area

      t.timestamps
    end
  end
end
