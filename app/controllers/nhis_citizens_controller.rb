class NhisCitizensController < ApplicationController
  before_action :authenticate_user!
  def index
    @nhis_citizens = NhisCitizen.all
  end

  def show
    @nhis_citizen = NhisCitizen.find(params[:id])
  end

  def new
    @nhis_citizen = NhisCitizen.new
    # @awards = Award.all
  end

  def create
    @nhis_citizen = NhisCitizen.new(nhis_citizen_params)
    # @nominee.award_id = params[:award]

    if @nhis_citizen.save
      flash[:notice] = 'NHIS Record Created!'
      redirect_to @nhis_citizen
    else
      render :new
    end
  end

  private

  def nhis_citizen_params
    params.require(:nhis_citizen).permit(:first_name, :last_name, :general_id, :description)
  end
end
