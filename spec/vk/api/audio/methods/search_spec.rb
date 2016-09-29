# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/methods/search'

RSpec.describe Vk::API::Audio::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :auto_complete }
    it { is_expected.to include :lyrics }
    it { is_expected.to include :performer_only }
    it { is_expected.to include :sort }
    it { is_expected.to include :search_own }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
