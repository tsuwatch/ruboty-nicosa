require 'nicosa'

module Ruboty
  module Actions
    class Nicosa < ::Ruboty::Actions::Base
      def call
        message.reply(response.public_send(message[:mode]))
      rescue => e
        e
      end

      private

      def response
        client.search(message[:query], params).map { |n| n['url'] }
      end

      def client
        @client ||= ::Nicosa::Client.new(
          service: message[:service],
          user_agent: 'https://github.com/yassun/ruboty-niconico'
        )
      end

      def params
        {
          sort_by: 'view_counter'
        }
      end
    end
  end
end