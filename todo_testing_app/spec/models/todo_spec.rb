# todo model test
require 'rails_helper'

RSpec.describe Todo, :type => :model do
	it "saves new todo with valid item content" do
		new_todo = Todo.new(:item => "test")
		expect(new_todo).to be_valid
	end

	it "doesn't save new todo with blank item content" do
		new_todo = Todo.new(:item => "")
		expect(new_todo).not_to be_valid
	end
end