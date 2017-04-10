class Tool < ApplicationRecord

  belongs_to :user

  def tool_checked_out
    update status: !status
  end
end
