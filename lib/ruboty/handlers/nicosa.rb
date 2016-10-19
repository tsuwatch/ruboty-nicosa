require "ruboty/actions/nicosa/nicosa"

module Ruboty
  module Handlers
    class Nicosa < Base
      on /nicosa (?<service>video|live|illust|manga|book|channel|channelarticle|news?) (?<mode>.+?) (?<query>.+)/, name: 'nicosa', description: 'Search from niconico'

      def nicosa(message)
        Ruboty::Actions::Nicosa.new(message).call
      end
    end
  end
end
