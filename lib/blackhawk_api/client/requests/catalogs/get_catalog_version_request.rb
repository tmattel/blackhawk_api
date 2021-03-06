require 'blackhawk_api/client/requests/base_request'
require 'blackhawk_api/client/values/blackhawk_identity'

module BlackhawkApi
  module Requests
    # Request object to retrieve the catalog version.
    class GetCatalogVersionRequest < PaginatedRequest
      attr_reader :catalog_id

      def initialize(catalog_id)
        @catalog_id = BlackhawkIdentity.new(catalog_id)
      end
    end
  end
end