class NewsBlogsController < ApplicationController
  def index
    @random_qoutes = News::Client.everything[:data]["articles"]
  end
end
