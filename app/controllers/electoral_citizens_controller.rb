class ElectoralCitizensController < ApplicationController
  before_action :authenticate_user!
  def index
    @electoral_citizens = ElectoralCitizen.all
  end

  def show
    @electoral_citizen = ElectoralCitizen.find(params[:id])
  end

  def new
    @electoral_citizen = ElectoralCitizen.new
    # @awards = Award.all
  end

  def create
    @electoral_citizen = ElectoralCitizen.new(electoral_citizen_params)
    # @nominee.award_id = params[:award]

    if @electoral_citizen.save
      flash[:notice] = 'Electoral Record Created!'
      redirect_to @electoral_citizen
    else
      render :new
    end
  end

  private

  def electoral_citizen_params
    params.require(:electoral_citizen).permit(:first_name, :last_name, :general_id, :description)
  end
end
