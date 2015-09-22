require 'sinatra/base'
require 'json'

module App
    class Main < Sinatra::Base
        set :port, 80
        set :bind, '0.0.0.0'

        get '/' do
            content_type :json
            halt 200, response.headers[ "Message" ] = "Sinatra is listening..."
        end

        run! if app_file = $0
    end
end
