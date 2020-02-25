require 'test_helper'

class ChampionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get champions_index_url
    assert_response :success
  end

  test "should get show" do
    get champions_show_url
    assert_response :success
  end

  test "should get new" do
    get champions_new_url
    assert_response :success
  end

  test "should get edit" do
    get champions_edit_url
    assert_response :success
  end

end
