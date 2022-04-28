module News
    class Error
        def self.map(code)
            case code
            when 404
                return 'Unauthorized request: Please try again'
            when 405
                return 'Please Try again'
            else
                return 'Invalid Request'
            end
        end
    end
end