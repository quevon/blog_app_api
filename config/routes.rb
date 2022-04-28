Rails.application.routes.draw do
  get 'news_blogs/tesla_news'
  get 'news_blogs/headlines'
  get 'news_blogs/apple_news'

  root to: 'news_blogs#tesla_news'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
