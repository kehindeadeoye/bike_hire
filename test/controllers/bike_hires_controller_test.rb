require "test_helper"

class BikeHiresControllerTest < ActionController::TestCase
  def bike_hire
    @bike_hire ||= bike_hires :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bike_hires)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("BikeHire.count") do
      post :create, bike_hire: { image: bike_hire.image, manufacturer: bike_hire.manufacturer, name: bike_hire.name, price: bike_hire.price }
    end

    assert_redirected_to bike_hire_path(assigns(:bike_hire))
  end

  def test_show
    get :show, id: bike_hire
    assert_response :success
  end

  def test_edit
    get :edit, id: bike_hire
    assert_response :success
  end

  def test_update
    put :update, id: bike_hire, bike_hire: { image: bike_hire.image, manufacturer: bike_hire.manufacturer, name: bike_hire.name, price: bike_hire.price }
    assert_redirected_to bike_hire_path(assigns(:bike_hire))
  end

  def test_destroy
    assert_difference("BikeHire.count", -1) do
      delete :destroy, id: bike_hire
    end

    assert_redirected_to bike_hires_path
  end
end
