require 'test_helper'

class AdvideosControllerTest < ActionController::TestCase
  setup do
    @advideo = advideos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advideos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advideo" do
    assert_difference('Advideo.count') do
      post :create, advideo: {  }
    end

    assert_redirected_to advideo_path(assigns(:advideo))
  end

  test "should show advideo" do
    get :show, id: @advideo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advideo
    assert_response :success
  end

  test "should update advideo" do
    patch :update, id: @advideo, advideo: {  }
    assert_redirected_to advideo_path(assigns(:advideo))
  end

  test "should destroy advideo" do
    assert_difference('Advideo.count', -1) do
      delete :destroy, id: @advideo
    end

    assert_redirected_to advideos_path
  end
end
