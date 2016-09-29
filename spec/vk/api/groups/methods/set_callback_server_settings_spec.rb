# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/set_callback_server_settings'

RSpec.describe Vk::API::Groups::Methods::SetCallbackServerSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :secret_key }
  end
end
