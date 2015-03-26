require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase

  def setup
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @project.id
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count', 1) do
      post :create, project: { name: @project.name, description: @project.description, :due_date => (Time.current + 1.minutes) }
    end
    assert_redirected_to projects_path
  end

  test "should get edit" do
    get :edit, id: @project.id
    assert_response :success
    assert_template :edit
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end

  # test "should get update" do
  #   get :update
  #   assert_response :success
  # end
end
