require 'blackhawk_api/client/requests/base_request'
require 'blackhawk_api/client/requests/blackhawk_identity'

module BlackhawkApi
  
  class FindProductLinesByBrandRequest < PaginatedRequest
    attr_reader :brand_id
    
    def initialize(brand_id)
      @brand_id = BlackhawkIdentity.new(brand_id)
    end
  end
end