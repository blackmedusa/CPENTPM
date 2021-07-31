class RegistryCitizensController < ApplicationController
  before_action :authenticate_user!
  def index
    @registry_citizens =RegistryCitizen.all
  end

  def show
    @registry_citizen = RegistryCitizen.find(params[:id])
  end

  def new
    @registry_citizen = RegistryCitizen.new
    # @awards = Award.all
  end

  def create
    @registry_citizen = RegistryCitizen.new(registry_citizen_params)
    # @nominee.award_id = params[:award]

    if @registry_citizen.save
      flash[:notice] = 'Birth and Death Registry Record Created!'
      redirect_to @registry_citizen
    else
      render :new
    end
  end

  private
  def registry_citizen_params
    params.require(:registry_citizen).permit(:first_name, :last_name, :general_id, :description)
  end
end
