require 'x'

module TweetX
    class Client
      def initialize
        @client = X::Client.new(**TweetX.credentials)
        @weather_client = OpenWeather::Client.new(api_key: '3e5f289c92a862485c6d5744519e168c')
      end

      def get_me()
        begin 
          return @client.get("users/me")
        rescue => e
          puts "Failed to post tweet: #{e.message}"
          return e.message
        end
      end

      def get_user_by_handle(handle)
        begin 
          return @client.get("users/#{handle}")
        rescue => e
          puts "Failed to post tweet: #{e.message}"
          return e.message
        end
      end

      def get_weather(city)
        begin
          return @weather_client.current_weather(q: city)
        rescue => e
          puts "Failed to get weather: #{e.message}"
          return "Failed to get weather: #{e.message}"
        end
      end

      # Add methods to interact with the API here
      
    end

    def self.credentials
      {
        api_key:             "N2M0WxI2nY86B90FcQ1L6ZonU",
        api_key_secret:      "Ww8oTk5blQlsd88DQkopoMtLNECMtEtdZRgWqZjT65gSFZ8vbo",
        access_token:        "1894636062297001986-6Pu0BrthFof2I9jWNspbmE6JL3klrm",
        access_token_secret: "KJDsaj1WGFHUxVtsRkReynWBxgX3b8ntxn0Q784obP98t",
      }
    end
    
  end