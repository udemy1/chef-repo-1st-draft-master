require 'chef/knife'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

module KnifePlugins
  class Tweet < Chef::Knife
    deps do
      require 'twitter'
    end

    banner "knife tweet MESSAGE"

    def run
      unless name_args.size == 1
        ui.fatal "You need to say something!"
        show_usage
        exit 1
      end
      
      Twitter.configure do |config|
        config.consumer_key = "Your Twitter app consumer key"
        config.consumer_secret = "Your Twitter app consumer secret"
        config.oauth_token = "Your OAuth token for your Twitter app"
        config.oauth_token_secret = "Your OAuth token secret for your Twitter app"
      end

      Twitter.update("#{name_args.first} #opschef")
    end
  end
end

