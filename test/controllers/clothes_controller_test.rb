require 'test_helper'

class ClothesControllerTest < ActionController::TestCase
  setup do
    @clothe = clothes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clothes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clothe" do
    assert_difference('Clothe.count') do
      post :create, clothe: { article_id: @clothe.article_id, color_id: @clothe.color_id, raw_description: @clothe.raw_description, score: @clothe.score }
    end

    assert_redirected_to clothe_path(assigns(:clothe))
  end

  test "should show clothe" do
    get :show, id: @clothe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clothe
    assert_response :success
  end

  test "should update clothe" do
    patch :update, id: @clothe, clothe: { article_id: @clothe.article_id, color_id: @clothe.color_id, raw_description: @clothe.raw_description, score: @clothe.score }
    assert_redirected_to clothe_path(assigns(:clothe))
  end

  test "should destroy clothe" do
    assert_difference('Clothe.count', -1) do
      delete :destroy, id: @clothe
    end

    assert_redirected_to clothes_path
  end
end
