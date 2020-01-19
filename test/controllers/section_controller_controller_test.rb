require 'test_helper'

class SectionControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get section_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get section_controller_show_url
    assert_response :success
  end

  test "should get edit" do
    get section_controller_edit_url
    assert_response :success
  end

  test "should get delete" do
    get section_controller_delete_url
    assert_response :success
  end

  test "should get new" do
    get section_controller_new_url
    assert_response :success
  end

end
