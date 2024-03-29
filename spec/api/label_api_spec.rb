=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor2LegacyClient::LabelApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LabelApi' do
  before do
    # run before each test
    @instance = Harbor2LegacyClient::LabelApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LabelApi' do
    it 'should create an instance of LabelApi' do
      expect(@instance).to be_instance_of(Harbor2LegacyClient::LabelApi)
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_labels_get
  # Return the attahced labels of chart.
  # Return the attahced labels of the specified chart version.
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_labels_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_labels_id_delete
  # Remove label from chart.
  # Remove label from the specified chart version.
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param id The label ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_labels_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_labels_post
  # Mark label to chart.
  # Mark label to the specified chart version.
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param label The label being marked to the chart version
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_labels_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
