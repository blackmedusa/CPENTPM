class NomineesController < ApplicationController
  before_action :authenticate_user!
  def index
    @nominees =Nominee.all
  end

  def show
    @nominee = Nominee.find(params[:id])
  end

  def new
    @nominee = Nominee.new
    @awards = Award.all
  end

  def create
    @nominee = Nominee.new(nominees_params)
    @nominee.award_id = params[:award]

    if @nominee.save
      flash[:notice] = "Created an Award"
      redirect_to @nominee
    else
      render :new
    end
  end

  private
  def nominees_params
    params.require(:nominee).permit(:first_name, :last_name, :biography, :video, :image)
  end
end
