require 'veto'

module BlackhawkApi
  module Validators
    # Validation to correlate account transactions
    class CorrelateAccountTransactionsRequestValidator
      # Obfuscate the veto validator for yard
      send :include, Veto.validator

      validate :transaction_ids, presence: true
      validate :should_have_at_least_2_transactions_to_correlate

      def should_have_at_least_2_transactions_to_correlate(entity)
        errors.add(:transaction_ids, 'should have at least 2 transactions to correlate') if entity.transaction_ids.count <= 1
      end
    end

    # Validation to create accounts
    class CreateAccountRequestValidator
      # Obfuscate the veto validator for yard
      send :include, Veto.validator

      validate :product_id, presence: true
      validate :amount, greater_than: 0
      validate :currency, presence: true
      validate :reference_number, presence: true, integer: true, exact_length: 12
    end

    # Validation to create account transactions
    class CreateAccountTransactionRequestValidator
      # Obfuscate the veto validator for yard
      send :include, Veto.validator

      validate :account_id, presence: true
    end
  end
end