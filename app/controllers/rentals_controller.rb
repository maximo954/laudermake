class RentalsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @rental = Rental.new(rental_params)
    @rental.po = 12345
    @rental.tool_id = @tool.id
    @rental.user_id = current_user.id
    @rental.save
  end

  private

  def rental_params
    params.require(:rental).permit(:po, :tool_id, :user_id )
  end
end
