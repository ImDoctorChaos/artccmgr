# frozen_string_literal: true

# Crono configuration file
#
# Here you can specify periodic jobs and schedule.
# You can use ActiveJob's jobs from `app/jobs/`
# You can use any class. The only requirement is that
# class should have a method `perform` without arguments.
#
# class TestJob
#   def perform
#     puts 'Test!'
#   end
# end
#
# Crono.perform(TestJob).every 2.days, at: '15:30'
#

# Perform the following jobs immediately upon startup
MetarJob.perform_now
VatusaRosterSyncJob.perform_now
VatsimOnlineJob.perform_now

# Update METAR every hours specified in settings.yml
Crono.perform(MetarJob).every(
  Settings.metar_update_interval.hours,
  at: { min: Settings.metar_update_time }
)

# Update Airport information as specified in settings.yml
Crono.perform(AirportUpdateJob).every(
  Settings.airport_update_interval.days,
  at: Settings.airport_update_time
)

# Synchronize VATUSA roster as specified in settings.yml
Crono.perform(VatusaRosterSyncJob).every(
  Settings.vatusa_roster_sync_interval.hours,
  at: { min: Settings.vatusa_roster_sync_time }
)
