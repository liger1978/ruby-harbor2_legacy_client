=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Harbor2LegacyClient::RoleRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RoleRequest' do
  before do
    # run before each test
    @instance = Harbor2LegacyClient::RoleRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RoleRequest' do
    it 'should create an instance of RoleRequest' do
      expect(@instance).to be_instance_of(Harbor2LegacyClient::RoleRequest)
    end
  end
  describe 'test attribute "role_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
