class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :zip
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :tel
      t.string :fax
      t.string :mobile

      t.timestamps null: false
    end
  end
end
