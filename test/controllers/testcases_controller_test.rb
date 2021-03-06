require 'test_helper'

class TestcasesControllerTest < ActionController::TestCase
  setup do
    @testcase = testcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testcase" do
    assert_difference('Testcase.count') do
      post :create, testcase: { code: @testcase.code, importance: @testcase.importance, minutes: @testcase.minutes, preconditions: @testcase.preconditions, status: @testcase.status, summary: @testcase.summary, title: @testcase.title }
    end

    assert_redirected_to testcase_path(assigns(:testcase))
  end

  test "should show testcase" do
    get :show, id: @testcase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testcase
    assert_response :success
  end

  test "should update testcase" do
    patch :update, id: @testcase, testcase: { code: @testcase.code, importance: @testcase.importance, minutes: @testcase.minutes, preconditions: @testcase.preconditions, status: @testcase.status, summary: @testcase.summary, title: @testcase.title }
    assert_redirected_to testcase_path(assigns(:testcase))
  end

  test "should destroy testcase" do
    assert_difference('Testcase.count', -1) do
      delete :destroy, id: @testcase
    end

    assert_redirected_to testcases_path
  end
end
