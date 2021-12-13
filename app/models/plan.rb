class Plan < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :departure_date
    validates :return_date
    validates :place
    validates :member
  end

  belongs_to :user
  has_many :plan_gears, dependent: :destroy
  has_many :gears, through: :plan_gears

  def set_date(plan)
    plan.strftime("%m月%d日")
  end

  def set_time(plan)
    plan.strftime("%H時%M分")
  end
end
