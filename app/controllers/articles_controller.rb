class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=#{ENV["NEWS_API_KEY"]}")
    data = JSON.parse(response.body)
    render json: data
  end  
end
