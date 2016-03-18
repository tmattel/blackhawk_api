require 'blackhawk_api/client/requests/base_request'
require 'blackhawk_api/client/requests/blackhawk_identity'

module BlackhawkApi
  class FindCatalogsByIdsRequest < PaginatedRequest
    attr_reader :catalog_ids
    
    def initialize(catalog_ids)
      @catalog_ids = BlackhawkIdentityArray.new(catalog_ids)
    end
  end
end