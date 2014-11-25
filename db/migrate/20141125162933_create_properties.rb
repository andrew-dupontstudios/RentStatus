class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      
      
      t.timestamps
    end
  end
end
