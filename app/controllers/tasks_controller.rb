class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :index
    end
  end

  def edit
    @task = Task.find_by(params[:id])
  end

  def update
    @task = Task.find_by(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


  private

  def task_params
    params.include(:task).permit(:name, :priority, :status, :begin_at, :end_at)
  end

end
