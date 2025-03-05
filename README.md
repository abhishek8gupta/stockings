# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# start server in local environment
rails s
rails server -b 0.0.0.0 -p 8000

# start server in production environment
rails s -e production

# start server in development environment
rails s -e development

# start server in test environment
rails s -e test

# install local gems 
bundle install --without production

# ruby env
https://dev.to/luizgadao/easy-way-to-change-ruby-version-in-mac-m1-m2-and-m3-16hl 

rbenv install -l
rbenv install 3.2.7
rbenv global 3.2.7

## add in  ~/.zprofile
---
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
---
source .zprofile


# heroku 
heroku login
heroku create
heroku rename devstudiolive


https://devstudiolive.herokuapp.com/
https://git.heroku.com/devstudiolive.git 

# heroku postgres 
https://devcenter.heroku.com/articles/sqlite3






rails g scaffold weathers city:string user_id:integer:index
rails db:migrate


bearer token: AAAAAAAAAAAAAAAAAAAAAMhEzgEAAAAAIWpPUzVMNA7gvLZ9FC9iHpg299g%3DMw1nlM85ZCN9lhmTuFJ854ZhZHi2ZwPTaEnasD8pd9hMO2cP4J

<% x_credentials = {
    api_key:             "TwTteYWH7h5x05hgpC5Xyjb5t",
    api_key_secret:      "ZQmqSaOUJDduXQZ6QcwkdP2gAHbvTWt1xsasl2qhnGBT7HXxY9",
    access_token:        "1894636062297001986-BJiVkf3t64tkXD3UEqIgZKk8ROkeXj",
    access_token_secret: "Z25wGtDqH5dDb4SQDn2GEdbHzUzZPCTuKMHznGvQLZjAg",
  } %>

<% x_client = TweetX::Client.new() %>

<% x_client = X::Client.new(**x_credentials) %>

<% tweets = client.user_timeline('trendingfaith', count: 20) %>

class HomeController < ApplicationController
  def index
    # <%= x_client.get_weather('Milpitas') %>
    # if params[:cityname].present?
      # x_client = TweetX::Client.new()
      # @weather = x_client.get_weather(params[:cityname])
      @city_params = params[:cityname]
      # Rails.logger.info "This is weather for city: #{params[:cityname]} #{@weather}"
    # end
    # log the params
    # puts "Params: #{params.inspect}"
  end
end



# x_client.get("users/StephenCurry30")

      <th>Feels Like(F)</th>
      <th>Humidity(%)</th>
      <th>Pressure(hPa)</th>
      <th>Wind Speed(mph)</th>

          <td style="padding-right: 10px;"><%= (((@weatherObject.main.feels_like - 273.15) * 9/5) + 32).round(2) %></td>
          <td style="padding-right: 10px;"><%= @weatherObject.main.humidity %></td>
          <td style="padding-right: 10px;"><%= @weatherObject.main.pressure %></td>
          <td style="padding-right: 10px;"><%= @weatherObject.wind.speed %></td>

#<OpenWeather::Models::City::Weather base="stations" 
clouds=#<OpenWeather::Models::Clouds all=3> cod=200 
coord=#<OpenWeather::Models::Coord lat=51.5085 lon=-0.1257> dt=2025-02-28 05:39:27 UTC id=2643743 
main=#<OpenWeather::Models::Main feels_like=272.3 grnd_level=1023 humidity=88 pressure=1028 sea_level=1028 temp=274.76 temp_max=275.67 temp_min=272.31> name="London" 
sys=#<OpenWeather::Models::Sys country="GB" id=2091269 sunrise=2025-02-28 06:47:55 UTC sunset=2025-02-28 17:38:29 UTC type=2> timezone=0 visibility=10000 
weather=[#<OpenWeather::Models::Weather description="clear sky" icon="01n" icon_uri=#<URI::HTTP http://openweathermap.org/img/wn/01n@2x.png> id=800 main="Clear">]
wind=#<OpenWeather::Models::Wind deg=9 speed=2.24>>


                                                /assets                                                                                           Propshaft::Server
                        new_user_session GET    /users/sign_in(.:format)                                                                          devise/sessions#new
                            user_session POST   /users/sign_in(.:format)                                                                          devise/sessions#create
                    destroy_user_session DELETE /users/sign_out(.:format)                                                                         devise/sessions#destroy
                       new_user_password GET    /users/password/new(.:format)                                                                     devise/passwords#new
                      edit_user_password GET    /users/password/edit(.:format)                                                                    devise/passwords#edit
                           user_password PATCH  /users/password(.:format)                                                                         devise/passwords#update
                                         PUT    /users/password(.:format)                                                                         devise/passwords#update
                                         POST   /users/password(.:format)                                                                         devise/passwords#create
                cancel_user_registration GET    /users/cancel(.:format)                                                                           devise/registrations#cancel
                   new_user_registration GET    /users/sign_up(.:format)                                                                          devise/registrations#new
                  edit_user_registration GET    /users/edit(.:format)                                                                             devise/registrations#edit
                       user_registration PATCH  /users(.:format)                                                                                  devise/registrations#update
                                         PUT    /users(.:format)                                                                                  devise/registrations#update
                                         DELETE /users(.:format)                                                                                  devise/registrations#destroy
                                         POST   /users(.:format)                                                                                  devise/registrations#create
                                    root GET    /                                                                                                 home#index
                              home_about GET    /home/about(.:format)                                                                             home#about
                                         POST   /                                                                                                 home#index


