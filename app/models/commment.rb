class Commment < ApplicationRecord

  validates :comment, presence: true, on: :create
  before_save :format_downcase

  belongs_to :user, :product

  protected
  def format_downcase
    self.commment.downcase!
  end

end
