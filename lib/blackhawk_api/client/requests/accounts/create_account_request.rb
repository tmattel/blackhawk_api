require 'blackhawk_api/client/requests/base_request'

module BlackhawkApi
  class CreateAccountRequest < Request
    attr_reader :product_id, :amount, :currency, :transaction_time,
      :reference_number, :store_number, :terminal_number, 
      :base_transaction_id, :message_reason_code
    
    def initialize(product_id, amount, currency, transaction_time,
      reference_number, store_number, terminal_number, base_transaction_id)
      
      @product_id = product_id
      @amount = amount
      @currency = currency
      @transaction_time = transaction_time
      @reference_number = reference_number
      @store_number = store_number
      @terminal_number = terminal_number
      @base_transaction_id = base_transaction_id
      @message_reason_code = message_reason_code
    end
  end
end