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

bearer token: AAAAAAAAAAAAAAAAAAAAAMhEzgEAAAAAIWpPUzVMNA7gvLZ9FC9iHpg299g%3DMw1nlM85ZCN9lhmTuFJ854ZhZHi2ZwPTaEnasD8pd9hMO2cP4J

<% x_credentials = {
    api_key:             "TwTteYWH7h5x05hgpC5Xyjb5t",
    api_key_secret:      "ZQmqSaOUJDduXQZ6QcwkdP2gAHbvTWt1xsasl2qhnGBT7HXxY9",
    access_token:        "1894636062297001986-BJiVkf3t64tkXD3UEqIgZKk8ROkeXj",
    access_token_secret: "Z25wGtDqH5dDb4SQDn2GEdbHzUzZPCTuKMHznGvQLZjAg",
  } %>



<% x_client = X::Client.new(**x_credentials) %>

<% tweets = client.user_timeline('trendingfaith', count: 20) %>

# x_client.get("users/StephenCurry30")

<%= form_tag root_path, method: => 'POST' do %>
    <%= text_field_tag 'username', nil, placeholder: "Enter a username", size: 100 %>
    <%= submit_tag "Lookup" %>
<% end %>