require "rails_helper"

RSpec.feature "Posts" do
  it "shows all the posts", type: :system do
    visit "/posts"

    expect(page).to have_text("Posts")

    click_link "New Post"

    expect(page).to have_button("Create Post")
  end
end
