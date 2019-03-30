require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user) }

  describe 'Valid factory' do
    it 'has a valid factory' do
      expect(subject).to be_valid
    end
  end

  describe 'Associations' do
    it { is_expected.to have_many(:messages) }
    it { is_expected.to have_many(:chatrooms).through(:messages) }
  end
end
