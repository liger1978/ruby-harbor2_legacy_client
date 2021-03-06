=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module Harbor2LegacyClient
  class ScanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the metrics of the latest scan all process
    # Get the metrics of the latest scan all process
    # @param [Hash] opts the optional parameters
    # @return [Stats]
    def scans_all_metrics_get(opts = {})
      data, _status_code, _headers = scans_all_metrics_get_with_http_info(opts)
      data
    end

    # Get the metrics of the latest scan all process
    # Get the metrics of the latest scan all process
    # @param [Hash] opts the optional parameters
    # @return [Array<(Stats, Fixnum, Hash)>] Stats data, response status code and response headers
    def scans_all_metrics_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scans_all_metrics_get ...'
      end
      # resource path
      local_var_path = '/scans/all/metrics'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Stats')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scans_all_metrics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metrics of the latest scheduled scan all process
    # Get the metrics of the latest scheduled scan all process
    # @param [Hash] opts the optional parameters
    # @return [Stats]
    def scans_schedule_metrics_get(opts = {})
      data, _status_code, _headers = scans_schedule_metrics_get_with_http_info(opts)
      data
    end

    # Get the metrics of the latest scheduled scan all process
    # Get the metrics of the latest scheduled scan all process
    # @param [Hash] opts the optional parameters
    # @return [Array<(Stats, Fixnum, Hash)>] Stats data, response status code and response headers
    def scans_schedule_metrics_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scans_schedule_metrics_get ...'
      end
      # resource path
      local_var_path = '/scans/schedule/metrics'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Stats')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scans_schedule_metrics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
