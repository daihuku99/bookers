require 'test_helper'

class BookslistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bookslists_new_url
    assert_response :success
  end

end
