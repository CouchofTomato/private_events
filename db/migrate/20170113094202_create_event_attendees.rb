class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees, :id => false do |t|
      t.integer :event_attendee_id
      t.integer :attendee_event_id

      t.timestamps null: false
    end
  end
end
