# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notes/methods/add'

RSpec.describe Vk::API::Notes::Methods::Add do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :title }
    it { is_expected.to include :text }
    it { is_expected.to include :privacy_view }
    it { is_expected.to include :privacy_comment }
  end
end
