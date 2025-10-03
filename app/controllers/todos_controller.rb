class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy ]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)
      if @todo.save
        redirect_to @todo, notice: t('todos.notice.created')
      else
        render :new, status: :unprocessable_entity
      end
  end

  def update
      if @todo.update(todo_params)
        redirect_to @todo, notice: t('todos.notice.updated'), status: :see_other 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @todo.destroy!
    redirect_to todos_path, notice: t('todos.notice.destroyed'), status: :see_other
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:Banana)
    end
end
