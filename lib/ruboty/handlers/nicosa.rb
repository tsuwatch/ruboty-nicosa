require "ruboty/nicosa/actions"

module Ruboty
  module Handlers
    class Nicosa < Base
      on /nicosa (?<service>video|live|illust|manga|book|channel|channelarticle|news?) (?<mode>.+?) (?<query>.+)/, name: 'nicosa', description: 'Search from niconico'

      def nicosa(message)
        message.reply(
          Ruboty::Nicosa::Actions.new(
            message[:service], message[:mode], message[:query]
          ).call
        )
      end
    end
  end
end
