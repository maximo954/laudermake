class Tool < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  validates :name, :serial_number, :replacement_cost, presence: true

  has_many :users, through: :rentals
  has_one :rental

  def tool_checked_out
    update status: !status
  end
end
