require 'nicosa'

module Ruboty
  module Nicosa
    class Actions
      def initialize(service, mode, query)
        @service = service
        @mode = mode
        @query = query
      end

      def call
        response.public_send(@mode)
      rescue => e
        e
      end

      private

      def response
        client.search(@query, params).map { |n| n['url'] }
      end

      def client
        @client ||= ::Nicosa::Client.new(
          service: @service,
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
