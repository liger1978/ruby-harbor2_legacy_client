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

# Unit tests for Harbor2LegacyClient::BoolConfigItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BoolConfigItem' do
  before do
    # run before each test
    @instance = Harbor2LegacyClient::BoolConfigItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BoolConfigItem' do
    it 'should create an instance of BoolConfigItem' do
      expect(@instance).to be_instance_of(Harbor2LegacyClient::BoolConfigItem)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "editable"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
