class CreateCalendarEvents < ActiveRecord::Migration
  def change
    create_table :calendar_events do |t|
      t.integer :year, index: true
      t.integer :type
      t.string :name
      t.string :shortname
      t.date :date
      t.integer :quarter
      t.text :details
    end
    add_index :calendar_events, [:year, :date]
    add_foreign_key :calendar_events, :years, column: :year
  end
end
