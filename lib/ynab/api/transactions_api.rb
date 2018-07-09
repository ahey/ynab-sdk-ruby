=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module YNAB
  class TransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk create transactions
    # Creates multiple transactions
    # @param budget_id The ID of the Budget.
    # @param transactions The list of Transactions to create.
    # @param [Hash] opts the optional parameters
    # @return [BulkResponse]
    def bulk_create_transactions(budget_id, transactions, opts = {})
      data, _status_code, _headers = bulk_create_transactions_with_http_info(budget_id, transactions, opts)
      data
    end

    # Bulk create transactions
    # Creates multiple transactions
    # @param budget_id The ID of the Budget.
    # @param transactions The list of Transactions to create.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BulkResponse, Fixnum, Hash)>] BulkResponse data, response status code and response headers
    def bulk_create_transactions_with_http_info(budget_id, transactions, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.bulk_create_transactions ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.bulk_create_transactions"
      end
      # verify the required parameter 'transactions' is set
      if @api_client.config.client_side_validation && transactions.nil?
        fail ArgumentError, "Missing the required parameter 'transactions' when calling TransactionsApi.bulk_create_transactions"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/transactions/bulk'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transactions)
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BulkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#bulk_create_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create new transaction
    # Creates a transaction
    # @param budget_id The ID of the Budget.
    # @param transaction The Transaction to create.
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def create_transaction(budget_id, transaction, opts = {})
      data, _status_code, _headers = create_transaction_with_http_info(budget_id, transaction, opts)
      data
    end

    # Create new transaction
    # Creates a transaction
    # @param budget_id The ID of the Budget.
    # @param transaction The Transaction to create.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def create_transaction_with_http_info(budget_id, transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.create_transaction ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.create_transaction"
      end
      # verify the required parameter 'transaction' is set
      if @api_client.config.client_side_validation && transaction.nil?
        fail ArgumentError, "Missing the required parameter 'transaction' when calling TransactionsApi.create_transaction"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/transactions'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transaction)
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#create_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List transactions
    # Returns budget transactions
    # @param budget_id The ID of the Budget.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (&#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported)
    # @return [TransactionsResponse]
    def get_transactions(budget_id, opts = {})
      data, _status_code, _headers = get_transactions_with_http_info(budget_id, opts)
      data
    end

    # List transactions
    # Returns budget transactions
    # @param budget_id The ID of the Budget.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (&#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported)
    # @return [Array<(TransactionsResponse, Fixnum, Hash)>] TransactionsResponse data, response status code and response headers
    def get_transactions_with_http_info(budget_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.get_transactions"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['uncategorized', 'unapproved'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of uncategorized, unapproved'
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/transactions'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'since_date'] = opts[:'since_date'] if !opts[:'since_date'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List account transactions
    # Returns all transactions for a specified account
    # @param budget_id The ID of the Budget.
    # @param account_id The ID of the Account.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;)
    # @return [TransactionsResponse]
    def get_transactions_by_account(budget_id, account_id, opts = {})
      data, _status_code, _headers = get_transactions_by_account_with_http_info(budget_id, account_id, opts)
      data
    end

    # List account transactions
    # Returns all transactions for a specified account
    # @param budget_id The ID of the Budget.
    # @param account_id The ID of the Account.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;)
    # @return [Array<(TransactionsResponse, Fixnum, Hash)>] TransactionsResponse data, response status code and response headers
    def get_transactions_by_account_with_http_info(budget_id, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions_by_account ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.get_transactions_by_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TransactionsApi.get_transactions_by_account"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['uncategorized', 'unapproved'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of uncategorized, unapproved'
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/accounts/{account_id}/transactions'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'since_date'] = opts[:'since_date'] if !opts[:'since_date'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions_by_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List category transactions
    # Returns all transactions for a specified category
    # @param budget_id The ID of the Budget.
    # @param category_id The ID of the Category.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;)
    # @return [HybridTransactionsResponse]
    def get_transactions_by_category(budget_id, category_id, opts = {})
      data, _status_code, _headers = get_transactions_by_category_with_http_info(budget_id, category_id, opts)
      data
    end

    # List category transactions
    # Returns all transactions for a specified category
    # @param budget_id The ID of the Budget.
    # @param category_id The ID of the Category.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;)
    # @return [Array<(HybridTransactionsResponse, Fixnum, Hash)>] HybridTransactionsResponse data, response status code and response headers
    def get_transactions_by_category_with_http_info(budget_id, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions_by_category ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.get_transactions_by_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling TransactionsApi.get_transactions_by_category"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['uncategorized', 'unapproved'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of uncategorized, unapproved'
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/categories/{category_id}/transactions'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'category_id' + '}', category_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'since_date'] = opts[:'since_date'] if !opts[:'since_date'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HybridTransactionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions_by_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Single transaction
    # Returns a single transaction
    # @param budget_id The ID of the Budget.
    # @param transaction_id The ID of the Transaction.
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def get_transactions_by_id(budget_id, transaction_id, opts = {})
      data, _status_code, _headers = get_transactions_by_id_with_http_info(budget_id, transaction_id, opts)
      data
    end

    # Single transaction
    # Returns a single transaction
    # @param budget_id The ID of the Budget.
    # @param transaction_id The ID of the Transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def get_transactions_by_id_with_http_info(budget_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions_by_id ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.get_transactions_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionsApi.get_transactions_by_id"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/transactions/{transaction_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'transaction_id' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List payee transactions
    # Returns all transactions for a specified payee
    # @param budget_id The ID of the Budget.
    # @param payee_id The ID of the Payee.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;)
    # @return [HybridTransactionsResponse]
    def get_transactions_by_payee(budget_id, payee_id, opts = {})
      data, _status_code, _headers = get_transactions_by_payee_with_http_info(budget_id, payee_id, opts)
      data
    end

    # List payee transactions
    # Returns all transactions for a specified payee
    # @param budget_id The ID of the Budget.
    # @param payee_id The ID of the Payee.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since_date Only return transactions on or after this date.
    # @option opts [String] :type Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;)
    # @return [Array<(HybridTransactionsResponse, Fixnum, Hash)>] HybridTransactionsResponse data, response status code and response headers
    def get_transactions_by_payee_with_http_info(budget_id, payee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions_by_payee ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.get_transactions_by_payee"
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling TransactionsApi.get_transactions_by_payee"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['uncategorized', 'unapproved'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of uncategorized, unapproved'
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/payees/{payee_id}/transactions'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'payee_id' + '}', payee_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'since_date'] = opts[:'since_date'] if !opts[:'since_date'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HybridTransactionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions_by_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates an existing transaction
    # Updates a transaction
    # @param budget_id The ID of the Budget.
    # @param transaction_id The ID of the Transaction.
    # @param transaction The Transaction to update.
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def update_transaction(budget_id, transaction_id, transaction, opts = {})
      data, _status_code, _headers = update_transaction_with_http_info(budget_id, transaction_id, transaction, opts)
      data
    end

    # Updates an existing transaction
    # Updates a transaction
    # @param budget_id The ID of the Budget.
    # @param transaction_id The ID of the Transaction.
    # @param transaction The Transaction to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def update_transaction_with_http_info(budget_id, transaction_id, transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.update_transaction ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling TransactionsApi.update_transaction"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionsApi.update_transaction"
      end
      # verify the required parameter 'transaction' is set
      if @api_client.config.client_side_validation && transaction.nil?
        fail ArgumentError, "Missing the required parameter 'transaction' when calling TransactionsApi.update_transaction"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/transactions/{transaction_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'transaction_id' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transaction)
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#update_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
