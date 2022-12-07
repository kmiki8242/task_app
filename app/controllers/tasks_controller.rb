class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    @uncomplete_tasks = Task.where(complete_status: 'false')
    @uncomplete_tasks = Task.order("start_date")
    @complete_tasks = Task.where(complete_status: 'true')
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    @subtasks = @task.subtasks.where.not(name_subtask: [nil, ''])
  end

  # GET /tasks/new
  def new
    @task = Task.new
    3.times { @task.subtasks.build }
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)
    @subtask = Subtask.create
    @subtask.task_id = @task.id
    @subtask.save

    respond_to do |format|
      if @task.save
        format.html { redirect_to task_url(@task), notice: "タスクを作成しました" }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(update_task_params)
        format.html { redirect_to task_url(@task), notice: "タスクを更新しました" }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "タスクを削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:name, :complete_status, :start_date, :end_date, :url, :note,
                                    subtasks_attributes:[:name_subtask, :complete_status_subtask, :start_date_subtask, :end_date_subtask])
    end

    def update_task_params
      params.require(:task).permit(:name, :complete_status, :start_date, :end_date, :url, :note,
                                    subtasks_attributes:[:name_subtask, :complete_status_subtask, :start_date_subtask, :end_date_subtask, :_destroy, :id])
    end

end
