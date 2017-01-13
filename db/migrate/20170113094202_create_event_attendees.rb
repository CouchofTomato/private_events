class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
      t.integer :event_attendee
      t.integer :attendee_event

      t.timestamps null: false
    end
  end
end
