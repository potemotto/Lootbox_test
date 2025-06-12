require "test_helper"

class RootboxsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rootboxs_new_url
    assert_response :success
  end

  test "should get index" do
    get rootboxs_index_url
    assert_response :success
  end

  test "should get show" do
    get rootboxs_show_url
    assert_response :success
  end

  test "should get edit" do
    get rootboxs_edit_url
    assert_response :success
  end
end
