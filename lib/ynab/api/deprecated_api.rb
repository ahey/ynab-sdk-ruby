=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module YNAB
  class DeprecatedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk create transactions
    # Creates multiple transactions.  Although this endpoint is still supported, it is recommended to use 'POST /budgets/{budget_id}/transactions' to create multiple transactions.
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget)
    # @param transactions The list of transactions to create
    # @param [Hash] opts the optional parameters
    # @return [BulkResponse]
    def bulk_create_transactions(budget_id, transactions, opts = {})
      data, _status_code, _headers = bulk_create_transactions_with_http_info(budget_id, transactions, opts)
      data
    end

    # Bulk create transactions
    # Creates multiple transactions.  Although this endpoint is still supported, it is recommended to use &#39;POST /budgets/{budget_id}/transactions&#39; to create multiple transactions.
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget)
    # @param transactions The list of transactions to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(BulkResponse, Fixnum, Hash)>] BulkResponse data, response status code and response headers
    def bulk_create_transactions_with_http_info(budget_id, transactions, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeprecatedApi.bulk_create_transactions ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling DeprecatedApi.bulk_create_transactions"
      end
      # verify the required parameter 'transactions' is set
      if @api_client.config.client_side_validation && transactions.nil?
        fail ArgumentError, "Missing the required parameter 'transactions' when calling DeprecatedApi.bulk_create_transactions"
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
        @api_client.config.logger.debug "API called: DeprecatedApi#bulk_create_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end