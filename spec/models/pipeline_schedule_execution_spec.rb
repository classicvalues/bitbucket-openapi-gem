=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Bitbucket::PipelineScheduleExecution
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Bitbucket::PipelineScheduleExecution do
  let(:instance) { Bitbucket::PipelineScheduleExecution.new }

  describe 'test an instance of PipelineScheduleExecution' do
    it 'should create an instance of PipelineScheduleExecution' do
      expect(instance).to be_instance_of(Bitbucket::PipelineScheduleExecution)
    end
  end
end
