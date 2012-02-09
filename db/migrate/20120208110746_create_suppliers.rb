class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :cnp
      t.string :site

      t.timestamps
    end
  end
end
