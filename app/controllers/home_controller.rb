class HomeController < ApplicationController

  def index
    client = OpenWeather::Client.new(
      api_key: '3e5f289c92a862485c6d5744519e168c'
    )

    cityName = params[:cityname]

    Rails.logger.debug "Received cityname: #{cityName}"
    @weatherObject = nil
    if cityName.present?
      # catch the error if the city is not found
      begin
        @weatherObject = client.current_weather(city: "#{params[:cityname]}")
      rescue => e
        Rails.logger.error "Error fetching weather data: #{e.message}"
        @error = "City not found"
      end
    end

    Rails.logger.info "This is weatherObject: #{@weatherObject} for city: #{cityName}"
    # Rails.logger.info "This is weatherObject temp : #{@weatherObject.main.temp_max}"
  end
end
