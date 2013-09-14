class CreatePropertyStatistics < ActiveRecord::Migration
  def change
    create_table :property_statistics do |t|
    	t.integer :area, null: false
    	t.integer :selling_price, null: false
    	t.integer :purchasing_price, null: false

     	t.timestamps
    end
  end
end
