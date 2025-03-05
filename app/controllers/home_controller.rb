class HomeController < ApplicationController
  def index
    city = params[:cityname]
    if !city.present? || (city == "" || city.start_with?(" ") || city.end_with?(" "))
      @error = "Provide a correct city name with no leading or trailing spaces, please!"
    else 
        begin
            client = OpenWeather::Client.new(api_key: '3e5f289c92a862485c6d5744519e168c')
            @weatherObject = client.current_weather(city: "#{city}")
            Rails.logger.info("City found: #{city}")
            @error = nil
        rescue Exception => e
            Rails.logger.error("City not found: #{city}. " + e.message)
            @error = "City not found: #{city} or invalid city name"
        end
    end
  end
end
