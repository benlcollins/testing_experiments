class TodosController < ApplicationController
	
	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.completed = false
		if @todo.save
			redirect_to action: "index"
		else
			render :new
		end
	end

	def destroy
		todo = Todo.find(params[:id])
		todo.delete
		redirect_to todos_path
	end


	private

		def todo_params
			params.require(:todo).permit(:item)
		end
end
