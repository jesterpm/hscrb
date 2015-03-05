class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.boolean :active
      t.integer :priority
      t.string :address1
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
    end
    add_index :families, :active
  end
end
