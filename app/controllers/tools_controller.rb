class ToolsController < ApplicationController

  before_action :authenticate_user!



  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    colors = [ 'black', 'blue', 'green', 'orange', 'red' ]

    @tool = Tool.new(tool_params)
    @tool.user_id = current_user.id
    @tool.label_color = colors.sample
    @tool.save
    redirect_to root_path
  end

  def edit
  @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.user_id = current_user.id
    if @tool.update(tool_params)

      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :serial_number, :replacement_cost, :label_color, :user_id, :photo )
  end
end
