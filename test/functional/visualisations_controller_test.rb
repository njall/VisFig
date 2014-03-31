require 'test_helper'

class VisualisationsControllerTest < ActionController::TestCase
  setup do
    @visualisation = visualisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visualisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visualisation" do
    assert_difference('Visualisation.count') do
      post :create, visualisation: { description: @visualisation.description, libLocation: @visualisation.libLocation, libName: @visualisation.libName, maxNoOfParameters: @visualisation.maxNoOfParameters, minNoOfParameters: @visualisation.minNoOfParameters }
    end

    assert_redirected_to visualisation_path(assigns(:visualisation))
  end

  test "should show visualisation" do
    get :show, id: @visualisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visualisation
    assert_response :success
  end

  test "should update visualisation" do
    put :update, id: @visualisation, visualisation: { description: @visualisation.description, libLocation: @visualisation.libLocation, libName: @visualisation.libName, maxNoOfParameters: @visualisation.maxNoOfParameters, minNoOfParameters: @visualisation.minNoOfParameters }
    assert_redirected_to visualisation_path(assigns(:visualisation))
  end

  test "should destroy visualisation" do
    assert_difference('Visualisation.count', -1) do
      delete :destroy, id: @visualisation
    end

    assert_redirected_to visualisations_path
  end
end
