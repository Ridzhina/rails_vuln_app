require "application_system_test_case"

class Level1::PostsTest < ApplicationSystemTestCase
  setup do
    @level1_post = level1_posts(:one)
  end

  test "visiting the index" do
    visit level1_posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit level1_posts_url
    click_on "New post"

    fill_in "Body", with: @level1_post.body
    fill_in "Title", with: @level1_post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit level1_post_url(@level1_post)
    click_on "Edit this post", match: :first

    fill_in "Body", with: @level1_post.body
    fill_in "Title", with: @level1_post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit level1_post_url(@level1_post)
    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end
