# frozen_string_literal: true

class Event
  class Signup < ApplicationRecord
    belongs_to :event
    belongs_to :position, class_name: 'Event::Position'
    belongs_to :user

    has_many :requests, class_name: 'Event::PositionRequest'

    accepts_nested_attributes_for :requests, allow_destroy: true
    validates_associated :requests

    validates :event, presence: true, allow_blank: false

    validates :user,
              presence: true,
              allow_blank: false,
              uniqueness: { scope: :event }

    validate :not_over

    # Determines whether a user has signed up for the event as a controller
    # Example: event.signups.has_user?(User.first)
    #
    # rubocop:disable Style/PredicateName
    def self.has_user?(user)
      !joins(:user).where(user: user).empty?
    end
    # rubocop:enable Style/PredicateName

    private

    # Validates the event has not already ended
    #
    def not_over
      return if event.nil?
      errors[:event] << 'is already over' unless event.end_time > Time.now.utc
    end
  end
end
