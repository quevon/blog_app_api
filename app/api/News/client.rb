module News
    class Client
        def self.tesla_news
            response = Request.call(http_method:'get', endpoint:'/v2/everything?q=tesla&from=2022-03-28&sortBy=publishedAt&',apiKey:'apiKey=71898e5282af40429db9e2f052a532c0')
        end
        def self.headlines
            response = Request.call(http_method:'get', endpoint:'/v2/top-headlines?country=us&category=business&',apiKey:'apiKey=71898e5282af40429db9e2f052a532c0')
        end
        def self.apple_news
            response = Request.call(http_method:'get', endpoint:'/v2/everything?q=apple&from=2022-04-27&to=2022-04-27&sortBy=popularity&',apiKey:'apiKey=71898e5282af40429db9e2f052a532c0')
        end
        def self.popular_news
            response = Request.call(http_method:'get', endpoint:'/v2/top-headlines?sources=techcrunch&',apiKey:'apiKey=71898e5282af40429db9e2f052a532c0')
        end
        def self.error_call
            response = Request.call(http_method:'get', endpoint:'/random1234.json')
        end
    end
end