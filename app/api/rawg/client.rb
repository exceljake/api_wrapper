module Rawg 
    class Client 
        def self.creator_roles 
            response = Request.call('get', "/creator-roles")
        end

        def self.creators
            response = Request.call('get', "/creators")
        end

        def self.developers
            response = Request.call('get', "/developers")
        end
    end
end