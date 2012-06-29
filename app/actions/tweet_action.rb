# require 'active_support/json'
# Cramp::Websocket.backend = :thin
class TweetAction < Cramp::Action
  self.transport = :sse
  
  def start
    STREAM.locations(-180,-90,180,90) do |status|
      render status.attrs[:coordinates].to_json
    end
  end

end
