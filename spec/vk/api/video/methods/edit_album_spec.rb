# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/edit_album'

RSpec.describe Vk::API::Video::Methods::EditAlbum do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :album_id }
    it { is_expected.to include :title }
    it { is_expected.to include :privacy }
  end
end
