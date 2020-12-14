=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module Harbor2LegacyClient
  class LabelApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return the attahced labels of chart.
    # Return the attahced labels of the specified chart version.
    # @param repo The project name
    # @param name The chart name
    # @param version The chart version
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def chartrepo_repo_charts_name_version_labels_get(repo, name, version, opts = {})
      chartrepo_repo_charts_name_version_labels_get_with_http_info(repo, name, version, opts)
      nil
    end

    # Return the attahced labels of chart.
    # Return the attahced labels of the specified chart version.
    # @param repo The project name
    # @param name The chart name
    # @param version The chart version
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def chartrepo_repo_charts_name_version_labels_get_with_http_info(repo, name, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.chartrepo_repo_charts_name_version_labels_get ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling LabelApi.chartrepo_repo_charts_name_version_labels_get"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling LabelApi.chartrepo_repo_charts_name_version_labels_get"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling LabelApi.chartrepo_repo_charts_name_version_labels_get"
      end
      # resource path
      local_var_path = '/chartrepo/{repo}/charts/{name}/{version}/labels'.sub('{' + 'repo' + '}', repo.to_s).sub('{' + 'name' + '}', name.to_s).sub('{' + 'version' + '}', version.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#chartrepo_repo_charts_name_version_labels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove label from chart.
    # Remove label from the specified chart version.
    # @param repo The project name
    # @param name The chart name
    # @param version The chart version
    # @param id The label ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def chartrepo_repo_charts_name_version_labels_id_delete(repo, name, version, id, opts = {})
      chartrepo_repo_charts_name_version_labels_id_delete_with_http_info(repo, name, version, id, opts)
      nil
    end

    # Remove label from chart.
    # Remove label from the specified chart version.
    # @param repo The project name
    # @param name The chart name
    # @param version The chart version
    # @param id The label ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def chartrepo_repo_charts_name_version_labels_id_delete_with_http_info(repo, name, version, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.chartrepo_repo_charts_name_version_labels_id_delete ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling LabelApi.chartrepo_repo_charts_name_version_labels_id_delete"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling LabelApi.chartrepo_repo_charts_name_version_labels_id_delete"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling LabelApi.chartrepo_repo_charts_name_version_labels_id_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LabelApi.chartrepo_repo_charts_name_version_labels_id_delete"
      end
      # resource path
      local_var_path = '/chartrepo/{repo}/charts/{name}/{version}/labels/{id}'.sub('{' + 'repo' + '}', repo.to_s).sub('{' + 'name' + '}', name.to_s).sub('{' + 'version' + '}', version.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#chartrepo_repo_charts_name_version_labels_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Mark label to chart.
    # Mark label to the specified chart version.
    # @param repo The project name
    # @param name The chart name
    # @param version The chart version
    # @param label The label being marked to the chart version
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def chartrepo_repo_charts_name_version_labels_post(repo, name, version, label, opts = {})
      chartrepo_repo_charts_name_version_labels_post_with_http_info(repo, name, version, label, opts)
      nil
    end

    # Mark label to chart.
    # Mark label to the specified chart version.
    # @param repo The project name
    # @param name The chart name
    # @param version The chart version
    # @param label The label being marked to the chart version
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def chartrepo_repo_charts_name_version_labels_post_with_http_info(repo, name, version, label, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.chartrepo_repo_charts_name_version_labels_post ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling LabelApi.chartrepo_repo_charts_name_version_labels_post"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling LabelApi.chartrepo_repo_charts_name_version_labels_post"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling LabelApi.chartrepo_repo_charts_name_version_labels_post"
      end
      # verify the required parameter 'label' is set
      if @api_client.config.client_side_validation && label.nil?
        fail ArgumentError, "Missing the required parameter 'label' when calling LabelApi.chartrepo_repo_charts_name_version_labels_post"
      end
      # resource path
      local_var_path = '/chartrepo/{repo}/charts/{name}/{version}/labels'.sub('{' + 'repo' + '}', repo.to_s).sub('{' + 'name' + '}', name.to_s).sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(label)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#chartrepo_repo_charts_name_version_labels_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
