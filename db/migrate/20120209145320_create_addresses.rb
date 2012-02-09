class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :addressable_id
      t.string :addressable_type
      t.string :county
      t.string :city
      t.string :street
      t.string :number
      t.string :block
      t.string :apartment
      t.string :zip_code

      t.timestamps
    end
  end
end
