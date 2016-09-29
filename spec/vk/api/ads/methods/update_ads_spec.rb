# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/update_ads'

RSpec.describe Vk::API::Ads::Methods::UpdateAds do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :data }
  end
end
