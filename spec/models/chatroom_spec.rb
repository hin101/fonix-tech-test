require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  subject { create(:chatroom) }

  describe 'Valid factory' do
    it 'has a valid factory' do
      expect(subject).to be_valid
    end
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :topic }
    it { is_expected.to validate_uniqueness_of :topic }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:messages) }
    it { is_expected.to have_many(:users).through(:messages) }
  end
end
