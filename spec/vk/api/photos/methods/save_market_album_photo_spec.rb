# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/save_market_album_photo'

RSpec.describe Vk::API::Photos::Methods::SaveMarketAlbumPhoto do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :photo }
    it { is_expected.to include :server }
    it { is_expected.to include :hash }
  end
end
