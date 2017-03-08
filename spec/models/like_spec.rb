require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:like) { build(:like) }

  subject { like }

  it { is_expected.to respond_to(:post_id) }
  it { is_expected.to respond_to(:user_id) }

  it { is_expected.to be_valid }

  describe "when User is not present" do
    before { like.user = nil }
    it { is_expected.to_not be_valid }
  end

  describe "when Post is not present" do
    before { like.post = nil }
    it { is_expected.to_not be_valid }
  end
end
