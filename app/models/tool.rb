class Tool < ApplicationRecord

  has_attached_file :image, styles: { medium: "300x300>", thumb: "80x80>", large: "600x600>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, :serial_number, :replacement_cost, presence: true

  has_many :users, through: :rentals
  has_one :rental

  def tool_checked_out
    update status: !status
  end

  def toogle_check
    update checked_out: !checked_out
  end

end
