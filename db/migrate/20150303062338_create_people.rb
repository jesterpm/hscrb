class CreatePeople < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.integer :familyid
      t.string :lastname
      t.string :firstname
      t.integer :position
      t.date :birthday
      t.string :youthgroup
      t.integer :grade
      t.string :comment
      t.string :email
      t.string :password
    end
    add_index :persons, :email, unique: true
    add_foreign_key :persons, :family, column: :familyid
  end
end
