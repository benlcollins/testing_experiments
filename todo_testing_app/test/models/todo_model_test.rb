require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "todo should not save without item content" do
  	todo = Todo.new
  	assert_not todo.save, "Saved todo without item content"
  end
end
