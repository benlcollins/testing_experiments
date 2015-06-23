require 'test_helper'

class TodosControllerTest < ActionController::TestCase
	test "should get index page" do
		get :index
		assert_response :success
		assert_not_nil assigns(:todos)
	end
end
