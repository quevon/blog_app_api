class NewsBlogsController < ApplicationController
  def tesla_news
    @articles = News::Client.tesla_news[:data]["articles"]
  end
  def headlines
    @articles_headlines = News::Client.headlines[:data]["articles"]
  end
  def apple_news
    @articles_apple = News::Client.apple_news[:data]["articles"]
  end
end
