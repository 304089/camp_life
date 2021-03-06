class GearsController < ApplicationController
  before_action :set_gear, except:[:new, :create, :index]

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user_id = current_user.id
    if @gear.save
      redirect_to gears_path
    else
      render "new"
    end
  end

  def show
  end

  def index
    @gears = Gear.mine(current_user)
  end

  def edit
  end

  def update
    if @gear.update(gear_params)
      redirect_to gear_path(@gear)
    else
      render "edit"
    end
  end

  private
  def gear_params
    params.require(:gear).permit(:name, :introduction, :amount, :genre, :gear_image)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end

end
