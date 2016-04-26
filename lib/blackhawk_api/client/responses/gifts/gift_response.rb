require 'blackhawk_api/client/entities/gift_details'

module BlackhawkApi
  module Responses
    # Response object for gift details.
    class GiftDetailsResponse < BaseResponse
      attr_reader :information

      def initialize(http_response)
        super(http_response.code, http_response.headers, http_response.raw_body)
      end

      protected

      def parse(object)
        @information = GiftDetails.new(object)
      end
    end
  end
end