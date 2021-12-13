class PlansController < ApplicationController
  before_action :set_plan, except:[:new, :gear_choice, :create, :index]

  def new
    @plan = Plan.new
  end

  def gear_choice
    @plan = Plan.new(plan_params)
    @plan.plan_gears.build
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    @plan.save
    redirect_to plans_path
  end

  def show
    @gears = Gear.joins(:plan_gears).where(plan_gears: { plan_id: @plan.id })
  end

  def index
    @plans = Plan.mine(current_user)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :departure_date, :return_date, :place, :check_in_time, :check_out_time, :memo, :member, gear_ids: [])
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
