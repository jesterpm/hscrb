class CreateCoops < ActiveRecord::Migration
  def change
    create_table :coops do |t|
      t.string :slug
      t.string :name
    end
    add_index :coops, :slug, unique: true
  end
end
