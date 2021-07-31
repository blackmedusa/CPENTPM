require 'test_helper'

class NomineesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nominees_index_url
    assert_response :success
  end

  test "should get show" do
    get nominees_show_url
    assert_response :success
  end

  test "should get new" do
    get nominees_new_url
    assert_response :success
  end

end
