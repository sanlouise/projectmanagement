require 'test_helper'

class UserprojectsControllerTest < ActionController::TestCase
  setup do
    @userproject = userprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userproject" do
    assert_difference('Userproject.count') do
      post :create, userproject: { project_id: @userproject.project_id, user_id: @userproject.user_id }
    end

    assert_redirected_to userproject_path(assigns(:userproject))
  end

  test "should show userproject" do
    get :show, id: @userproject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userproject
    assert_response :success
  end

  test "should update userproject" do
    patch :update, id: @userproject, userproject: { project_id: @userproject.project_id, user_id: @userproject.user_id }
    assert_redirected_to userproject_path(assigns(:userproject))
  end

  test "should destroy userproject" do
    assert_difference('Userproject.count', -1) do
      delete :destroy, id: @userproject
    end

    assert_redirected_to userprojects_path
  end
end
