# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/responses/unregister_device_response'

RSpec.describe Vk::API::Account::Responses::UnregisterDeviceResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Response }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :response }
  end
end
