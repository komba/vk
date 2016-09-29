# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/methods/get_reposts'

RSpec.describe Vk::API::Wall::Methods::GetReposts do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :post_id }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
