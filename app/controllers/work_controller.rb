class WorkController < ApplicationController
  def new
    @task = Task.new
  end

  def index
    @tasks_completed = Task.where(completed:true)
    @tasks_incomplete = Task.where(completed:false)
  end

  def create
    @task = Task.new(params[:task])
      if @task.save 
        flash[:notice] = "Saved"
        respond_to do |format|
          format.html { redirect_to '/work/index'}
          format.js
        end
      else
        flash[:error] = "Not saved"
      end
  end

  def update
    @task = Task.find(params[:id])
    @task.completed = true
    @task.save
    respond_to do |format|
      format.html { redirect_to '/work/index'}
      format.js
    end
  end
end
