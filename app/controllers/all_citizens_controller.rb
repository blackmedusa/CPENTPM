class AllCitizensController < ApplicationController
  before_action :authenticate_user!
  def index
    @registry_citizens = RegistryCitizen.all
    @electoral_citizens = ElectoralCitizen.all
    @nhis_citizens = NhisCitizen.all
  end

  private
  def registry_citizen_params
    params.require(:registry_citizen).permit(:first_name, :last_name, :general_id, :description)
  end
end
