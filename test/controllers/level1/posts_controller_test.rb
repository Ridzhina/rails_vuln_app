require "test_helper"

class Level1::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level1_post = level1_posts(:one)
  end

  test "should get index" do
    get level1_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_level1_post_url
    assert_response :success
  end

  test "should create level1_post" do
    assert_difference("Level1::Post.count") do
      post level1_posts_url, params: { level1_post: { body: @level1_post.body, title: @level1_post.title } }
    end

    assert_redirected_to level1_post_url(Level1::Post.last)
  end

  test "should show level1_post" do
    get level1_post_url(@level1_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_level1_post_url(@level1_post)
    assert_response :success
  end

  test "should update level1_post" do
    patch level1_post_url(@level1_post), params: { level1_post: { body: @level1_post.body, title: @level1_post.title } }
    assert_redirected_to level1_post_url(@level1_post)
  end

  test "should destroy level1_post" do
    assert_difference("Level1::Post.count", -1) do
      delete level1_post_url(@level1_post)
    end

    assert_redirected_to level1_posts_url
  end
end
