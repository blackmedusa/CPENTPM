class DvlaCitizensController < ApplicationController
  before_action :authenticate_user!
  def index
    @dvla_citizens = DvlaCitizen.all
  end

  def show
    @dvla_citizen = DvlaCitizen.find(params[:id])
  end

  def new
    @dvla_citizen = DvlaCitizen.new
    # @awards = Award.all
  end

  def create
    @dvla_citizen = DvlaCitizen.new(dvla_citizen_params)
    # @nominee.award_id = params[:award]

    if @dvla_citizen.save
      flash[:notice] = 'DVLA dvla Record Created!'
      redirect_to @dvla_citizen
    else
      render :new
    end
  end

  private

  def dvla_citizen_params
    params.require(:dvla_citizen).permit(:first_name, :last_name, :general_id, :description)
  end
end
