require 'blackhawk_api/client/entities/account_information'

module BlackhawkApi
  module Responses
    # Response object after the Read Account call.
    class AccountDetailsResponse < BaseResponse
      attr_reader :information

      def initialize(http_response)
        super(http_response.code, http_response.headers, http_response.raw_body)
      end

      protected

      def parse(object)
        @information = AccountInformation.new(object)
      end
    end
  end
end