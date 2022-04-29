module News
    class Client
        def self.tesla_news
            response = Request.call(http_method:'get', endpoint:'/v2/everything?q=tesla&from=2022-03-29&sortBy=publishedAt&',apiKey:'apiKey=f20b23311d054fb6954a298483bfa91c')
        end
        def self.headlines
            response = Request.call(http_method:'get', endpoint:'/v2/top-headlines?country=us&category=business&',apiKey:'apiKey=f20b23311d054fb6954a298483bfa91c')
        end
        def self.apple_news
            response = Request.call(http_method:'get', endpoint:'/v2/everything?q=apple&from=2022-04-28&to=2022-04-28&sortBy=popularity&',apiKey:'apiKey=f20b23311d054fb6954a298483bfa91c')
        end
        def self.popular_news
            response = Request.call(http_method:'get', endpoint:'/v2/top-headlines?sources=techcrunch&',apiKey:'apiKey=f20b23311d054fb6954a298483bfa91c')
        end
        def self.error_call
            response = Request.call(http_method:'get', endpoint:'/random1234.json')
        end
    end
end