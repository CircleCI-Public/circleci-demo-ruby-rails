require 'rails_helper'

RSpec.describe Post, type: :model do
  # This should return the minimal set of attributes required to create a valid
  # Post. As you add validations to Post, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      title: "A new blog post",
      body: "The body of the post"
    }
  }

  let(:invalid_attributes) {
    {
      title: nil,
      body: nil
    }
  }

  describe "an valid post" do
    it {
      post = Post.new valid_attributes
      expect(post.valid?).to be_truthy
      expect { post.save }.to change { Post.count }.by(1)
    }
  end

  describe "an invalid post" do
    it {
      post = Post.new invalid_attributes
      expect(post.valid?).to be_falsey
    }
  end
end
