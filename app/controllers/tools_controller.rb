class ToolsController < ApplicationController

  before_action :authenticate_user!
  before_action :authorize_user!, only: [:new, :edit, :create]

  def index
    @tools = Tool.all.order(created_at: :desc)
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
    if @tool.save
      redirect_to root_path,
      notice: 'You have successfully created a tool.'
    else
      render 'new',
      notice: @tool.errors.messages
    end

  end

  def edit
  @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.user_id = current_user.id
    if @tool.update(tool_params)
      redirect_to root_path,
      notice: 'You have successfully updated tool.'
    else
      render 'edit'
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to root_path
  end

  def checked_out
    @tool = Tool.find(params[:id])
    @tool.toogle_check
    @tool.create_rental(tool_id: @tool.id, user_id: current_user.id)
    redirect_to root_path, notice: 'You have successfully rent a tool.'
  end

  def return
    @tool = Tool.find(params[:id])
    @tool.toogle_check
    @tool.create_rental(tool_id: nil, user_id: nil)
    redirect_to root_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :serial_number, :replacement_cost, :label_color, :user_id, :image )
  end

  def authorize_user!
    if !current_user || !current_user.admin?
      redirect_to root_path, notice: "Your permissions do not allow access to this page"
    end
  end
end
