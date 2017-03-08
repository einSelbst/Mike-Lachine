require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { build(:post) }

  subject { post }

  it { is_expected.to respond_to(:title) }
  it { is_expected.to respond_to(:content) }
  it { is_expected.to respond_to(:user_id) }

  it { is_expected.to be_valid }

  describe "when User is not present" do
    before { post.user = nil }
    it { is_expected.to_not be_valid }
  end

  describe "when title is not present" do
    before { post.title = nil }
    it { is_expected.to_not be_valid }
  end
end
