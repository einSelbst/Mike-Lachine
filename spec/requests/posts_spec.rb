require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get posts_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /posts" do
    let(:valid_post) { attributes_for(:post) }

    it "responds with Created (201)" do
      skip "need to set a current user"
      post posts_path, params: { post: valid_post }
      expect(response).to have_http_status(:created)
    end
  end
end
