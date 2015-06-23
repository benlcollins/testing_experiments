require 'rails_helper'

describe TodosController do

	describe "GET #index" do
		it "responds successfully with an HTTP status code 200 and renders the index page" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
			expect(response).to render_template(:index)
		end

		it "assigns todos" do
			new_todo = Todo.create(item: "test")
			get :index
			expect(assigns(:todos).last).to eq(new_todo)
		end	
	end
end