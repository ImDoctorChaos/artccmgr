# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event::Pilot, type: :model do
  it 'has a valid factory' do
    expect(build(:event_pilot)).to be_valid
  end

  let(:event_pilot) { build(:event_pilot) }

  describe 'ActiveModel validations' do
    # Basic validations
    it { expect(event_pilot).to validate_presence_of(:event) }
    it { expect(event_pilot).to validate_presence_of(:user) }
    it { expect(event_pilot).to validate_presence_of(:callsign) }

    # Format validations

    # Inclusion/acceptance of values
    it { expect(event_pilot).to_not allow_value(nil).for(:event) }
    it { expect(event_pilot).to_not allow_value(nil).for(:user) }
    it { expect(event_pilot).to_not allow_value(nil).for(:callsign) }
  end # describe 'ActiveModel validations'

  describe 'ActiveRecord associations' do
    it { expect(event_pilot).to belong_to(:event) }
    it { expect(event_pilot).to belong_to(:user) }
  end # describe 'ActiveRecord associations'

  describe 'callsign' do
    it 'should capitalize the callsign' do
      expect(build(:event_pilot, callsign: 'testing').callsign).to eq 'TESTING'
    end
  end

  describe 'already signed up' do
    it 'should not be allowed to sign up again' do
      event_pilot_sign_up = create(:event_pilot)
      event = event_pilot_sign_up.event
      user  = event_pilot_sign_up.user
      expect(build(:event_pilot, event: event, user: user)).to_not be_valid
    end

    it 'should not be allowed to sign up if already a controller' do
      controller_sign_up = create(:event_position)
      event = controller_sign_up.event
      user  = controller_sign_up.user
      expect(build(:event_pilot, event: event, user: user)).to_not be_valid
    end
  end

  it 'prohibits registering for events after they have ended' do
    event = build(
      :event,
      start_time: Time.now.utc + 5.minutes,
      end_time: Time.now.utc + 10.minutes
    )

    Timecop.travel(Time.now.utc + 20.minutes)
    expect(build(:event_pilot, event: event)).to_not be_valid
  end

  describe '#has_user?' do
    it 'returns true when the user has already registered for the event' do
      event_pilot_sign_up = create(:event_pilot)
      event = event_pilot_sign_up.event
      user  = event_pilot_sign_up.user
      expect(event.pilots.has_user?(user)).to be true
    end

    it 'returns false if the user has not registered for the event' do
      event_sign_up = create(:event_signup)
      event = event_sign_up.event
      user  = create(:user)
      expect(event.pilots.has_user?(user)).to be false
    end
  end
end
