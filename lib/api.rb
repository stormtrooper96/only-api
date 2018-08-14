# require 'user' # ActiveRecord model

# Connect to the db
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
class JSONServer
  def call(env)
    [200, {"Content-Type" => "application/json"}, ['{ "message" : "Hello!" }']]
  end
end

class Api
  def self.routes
    [
      {method: "GET", path: %r{^/users/(?<id>\d+)}, api_method: :find},
      {method: "POST", path: %r{^/users}, api_method: :create},
      {method: "PUT", path: %r{^/users/(?<id>\d+)}, api_method: :update},
      {method: "GET", path: %r{^/authenticate}, api_method: :authenticate}
    ]    
  end

  def self.find(params)
    run JSONServer.new
  end
  
  def self.create(params)
    run JSONServer.new
  end
  
  def self.update(params)
    run JSONServer.new
  end
end