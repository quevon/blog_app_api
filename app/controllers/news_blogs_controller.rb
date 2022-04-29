class NewsBlogsController < ApplicationController
  before_action :articles_popular , only: %i[ tesla_news headlines apple_news ]

  def tesla_news
    @articles = News::Client.tesla_news[:data]["articles"]
  end
  def headlines
    @articles_headlines = News::Client.headlines[:data]["articles"]
  end
  def apple_news
    @articles_apple = News::Client.apple_news[:data]["articles"]
  end

  private

  def articles_popular
    @articles_popular = News::Client.popular_news[:data]["articles"]
  end
end
