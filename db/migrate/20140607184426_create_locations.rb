class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_address
      t.string :postcode
      t.string :town
      t.text :description
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
