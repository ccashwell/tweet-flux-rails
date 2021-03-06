configure_client = Proc.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
end

if defined?(Twitter)
  $twitter_rest_client      = Twitter::REST::Client.new &configure_client
  $twitter_streaming_client = Twitter::Streaming::Client.new &configure_client
end
