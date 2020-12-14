=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor2LegacyClient::RobotAccountApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RobotAccountApi' do
  before do
    # run before each test
    @instance = Harbor2LegacyClient::RobotAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RobotAccountApi' do
    it 'should create an instance of RobotAccountApi' do
      expect(@instance).to be_instance_of(Harbor2LegacyClient::RobotAccountApi)
    end
  end

  # unit tests for projects_project_id_robots_get
  # Get all robot accounts of specified project
  # Get all robot accounts of specified project
  # @param project_id Relevant project ID.
  # @param [Hash] opts the optional parameters
  # @return [Array<RobotAccount>]
  describe 'projects_project_id_robots_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_project_id_robots_post
  # Create a robot account for project
  # Create a robot account for project
  # @param project_id Relevant project ID.
  # @param robot Request body of creating a robot account.
  # @param [Hash] opts the optional parameters
  # @return [RobotAccountPostRep]
  describe 'projects_project_id_robots_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_project_id_robots_robot_id_delete
  # Delete the specified robot account
  # Delete the specified robot account
  # @param project_id Relevant project ID.
  # @param robot_id The ID of robot account.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'projects_project_id_robots_robot_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_project_id_robots_robot_id_get
  # Return the infor of the specified robot account.
  # Return the infor of the specified robot account.
  # @param project_id Relevant project ID.
  # @param robot_id The ID of robot account.
  # @param [Hash] opts the optional parameters
  # @return [RobotAccount]
  describe 'projects_project_id_robots_robot_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_project_id_robots_robot_id_put
  # Update status of robot account.
  # Used to disable/enable a specified robot account.
  # @param project_id Relevant project ID.
  # @param robot_id The ID of robot account.
  # @param robot Request body of enable/disable a robot account.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'projects_project_id_robots_robot_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end