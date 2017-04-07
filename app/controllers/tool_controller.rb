class ToolController < ApplicationController
  def index
    @tools = Tool.all
  end
end
