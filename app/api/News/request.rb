require 'rest-client'

module News
    class Request
        BASE_URL = 'https://newsapi.org/'
        def self.call(http_method:,endpoint:,apiKey:)
            result = RestClient::Request.execute(
                method: http_method,
                url: "#{BASE_URL}#{endpoint}#{apiKey}",
                headers: {'Content-Type'=>'application/json'}
            )
            {code: result.code, status: 'ok', data: JSON.parse(result)}
        rescue RestClient::ExceptionWithResponse => error
            {code: error.http_code, status: error.message,data:Error.map(error.http_code)}
        end
    end
end