# todo model test
require 'rails_helper'

RSpec.describe Todo, :type => :model do
	it "doesn't save new todo with blank item content" do
		new_todo = Todo.new
		expect(new_todo).not_to be_valid
	end
end