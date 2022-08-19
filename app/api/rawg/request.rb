module Rawg 
    class Request 

        def self.call(http_method, endpoint)
            result = RestClient::Request.execute(
                method: http_method, 
                url: "#{Rails.application.credentials.rawg.production[:base_url]}#{endpoint}?key=#{Rails.application.credentials.rawg.production[:rawg_token]}", 
                headers: {'Content-Type' => 'application/json'}
                )
            { code: result.code, status: 'Success', data: JSON.parse(result.body)}
        rescue RestClient::ExceptionWithResponse => error 
            { code: error.http_code, status: error.message, data: Errors.map(error.http_code)}
        end
    end
end