class CalendarEvent < ActiveRecord::Base
  belongs_to :year, foreign_key: "year"
end
