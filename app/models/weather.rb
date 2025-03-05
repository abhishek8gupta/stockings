
class CityValidator < ActiveModel::Validator
    def validate(record)
        if record.city == "" || record.city.start_with?(" ") || record.city.end_with?(" ")
            record.errors.add record.city, "Provide a correct city name with no leading or trailing spaces, please!"
        else 
            begin
                client = OpenWeather::Client.new(api_key: '3e5f289c92a862485c6d5744519e168c')
                weatherObject = client.current_weather(city: "#{record.city}")
                Rails.logger.info("City found: #{record.city}")
                record.errors.clear
            rescue Exception => e
                Rails.logger.error("City not found: #{record.city}")
                record.errors.add record.city, "City not found, please try again! " + e.message
            end
        end
    end
end

class Weather < ApplicationRecord
    belongs_to :user
    include ActiveModel::Validations
    validates_with CityValidator
end
