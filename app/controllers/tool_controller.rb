class ToolController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @tools = Tool.all
  end
end
