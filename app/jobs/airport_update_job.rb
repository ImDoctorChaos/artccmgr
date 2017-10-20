require 'aircharts'

class AirportUpdateJob < ApplicationJob
  queue_as :default

  def perform(airport = nil)
    airport.nil? ? airports = Airport.all : airports = [airport]

    airports.each do |airport|
      begin
        aircharts = AirCharts::Airport.new(airport.icao)
      rescue => e
        Rails.logger.info "AirCharts: #{e}"
      end

      update_airport(airport, aircharts)
      update_charts(airport, aircharts)
    end # airports.each
  end # def perform

  private

  # Update airport information from AirCharts
  #
  def update_airport(airport, aircharts)
    airport.elevation = aircharts.elevation
    airport.latitude  = aircharts.latitude
    airport.longitude = aircharts.longitude
    airport.save
  end

  # Update Airport Chart records from AirCharts
  #
  def update_charts(airport, aircharts)
    return if aircharts.charts.empty? # if charts are missing skip

    # Purge potentially old charts from the DB
    airport.charts.destroy_all

    aircharts.charts.each_pair do |category, charts|
      charts.each do |chart|
        attributes = {
            airport:  airport,
            category: category,
            name:     chart.chartname,
            url:      chart.url
        }

        Airport::Chart.create(attributes)
      end # charts.each
    end # aircharts.each_pair
  end # def update_charts

end # class AirportUpdateJob
