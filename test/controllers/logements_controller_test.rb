require "test_helper"

class LogementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logement = logements(:one)
  end

  test "should get index" do
    get logements_url, as: :json
    assert_response :success
  end

  test "should create logement" do
    assert_difference("Logement.count") do
      post logements_url, params: { logement: { category: @logement.category, description: @logement.description, price: @logement.price, rooms: @logement.rooms, surface: @logement.surface, title: @logement.title, user_id: @logement.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show logement" do
    get logement_url(@logement), as: :json
    assert_response :success
  end

  test "should update logement" do
    patch logement_url(@logement), params: { logement: { category: @logement.category, description: @logement.description, price: @logement.price, rooms: @logement.rooms, surface: @logement.surface, title: @logement.title, user_id: @logement.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy logement" do
    assert_difference("Logement.count", -1) do
      delete logement_url(@logement), as: :json
    end

    assert_response :no_content
  end
end
