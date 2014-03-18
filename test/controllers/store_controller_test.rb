require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_response '#columns #side a', minimum: 4
    assert_response '#main .entry', 3
    assert_response 'h3', 'Programming Ruby 1.9'
    assert_response '.price', /\$[,\d}+\.\d\d/
 
 test "markup neede for store.js.coffe is in place" do
 	get :index
 	assert_select '.store .entry > img', 3
 	assert_select '.entry input[type=submit]', 3
 end
