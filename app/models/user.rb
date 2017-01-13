class User < ActiveRecord::Base
    has_many :created_events, :foreign_key => "creator_id", :class_name => "Event"
    has_many :events, :through => :event_attendees, :source => :attendee_event
end
