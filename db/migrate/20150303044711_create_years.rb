class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.references :coop, index: true
      t.date :start
      t.date :publish
      t.date :lockclassinfo
      t.date :waitlistopen
      t.string :name
    end
    add_foreign_key :years, :coops
  end
end
