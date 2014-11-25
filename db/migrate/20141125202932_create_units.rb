class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.float :rent
      t.string :tenant0_first_name
      t.string :tenant0_last_name
      t.string :tenant0_phone
      t.string :tenant0_email
      t.string :tenant1_first_name
      t.string :tenant1_last_name
      t.string :tenant1_phone
      t.string :tenant1_email
      t.string :tenant2_first_name
      t.string :tenant2_last_name
      t.string :tenant2_phone
      t.string :tenant2_email
      t.string :tenant3_first_name
      t.string :tenant3_last_name
      t.string :tenant3_phone
      t.string :tenant3_email
      t.boolean :vacancy
      t.references :property, index: true
      t.attachment :image0
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
      t.attachment :image4
      t.attachment :image5
      t.attachment :image6
      t.attachment :image7
      t.attachment :image8
      t.attachment :image9
      t.attachment :image10
      t.attachment :image11
      t.timestamps
    end
  end
end
