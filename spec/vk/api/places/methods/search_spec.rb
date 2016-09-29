# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/places/methods/search'

RSpec.describe Vk::API::Places::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :city }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :radius }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
