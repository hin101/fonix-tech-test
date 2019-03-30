require 'rails_helper'

RSpec.describe Message, type: :model do
  subject { create(:message) }

  describe 'Valid factory' do
    it 'has a valid factory' do
      expect(subject).to be_valid
    end
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:chatroom) }
  end
end
