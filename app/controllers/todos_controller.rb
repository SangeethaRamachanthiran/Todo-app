class TodosController < ApplicationController
  def index
    @todo = Todo.new
    @implement_list = Todo.all
  end
  def create
    todo = Todo.new(todos_params)
    if todo.save
      redirect_to root_path
      # render plain: "Successful"
    #  todo_list
    else
     render plain: "Failed"
   end

  end
  # def todo_list
  #   render plain: Todo.order(:id).map{|todos| todos.to_pleasent_string}
  # end
 
  ################
  def delete
    @todo_delete = Todo.find(params[:id])
    @todo_delete.destroy
    redirect_to root_path
  end
  # @todo_delete
###################

  private
  def todos_params
    params.require(:todo).permit(:task,:task_date)
  end
end
