class CreateBikeHires < ActiveRecord::Migration
  def change
    create_table :bike_hires do |t|
      t.string :name
      t.float :price
      t.text :manufacturer
      t.string :image

      t.timestamps null: false
    end
  end
end
