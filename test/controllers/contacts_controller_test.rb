require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get contacts_post_url
    assert_response :success
  end

  test "should get create" do
    get contacts_create_url
    assert_response :success
  end

  test "should get index" do
    get contacts_index_url
    assert_response :success
  end
end
