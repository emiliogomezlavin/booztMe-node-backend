require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contents)
  end

  test "should create content" do
    assert_difference('Content.count') do
      post :create, content: { category: @content.category, sentiment: @content.sentiment, title: @content.title, url: @content.url }
    end

    assert_response 201
  end

  test "should show content" do
    get :show, id: @content
    assert_response :success
  end

  test "should update content" do
    put :update, id: @content, content: { category: @content.category, sentiment: @content.sentiment, title: @content.title, url: @content.url }
    assert_response 204
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete :destroy, id: @content
    end

    assert_response 204
  end
end
