require 'test_helper'

class MockObjectsControllerTest < ActionController::TestCase
  setup do
    @mock_object = mock_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mock_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mock_object" do
    assert_difference('MockObject.count') do
      post :create, mock_object: { name: @mock_object.name }
    end

    assert_redirected_to mock_object_path(assigns(:mock_object))
  end

  test "should show mock_object" do
    get :show, id: @mock_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mock_object
    assert_response :success
  end

  test "should update mock_object" do
    patch :update, id: @mock_object, mock_object: { name: @mock_object.name }
    assert_redirected_to mock_object_path(assigns(:mock_object))
  end

  test "should destroy mock_object" do
    assert_difference('MockObject.count', -1) do
      delete :destroy, id: @mock_object
    end

    assert_redirected_to mock_objects_path
  end
end
