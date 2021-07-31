class AwardsController < ApplicationController
  before_action :authenticate_user!
  def index
    @awards = Award.all
  end

  def new
    @award = Award.new
  end

  def show
    @award = Award.find_by(id: params[:id])
  end

  def create
    @award = Award.new(awards_params)

    if @award.save
      flash[:notice] = "Created an Award"
      redirect_to @award
    else
      render :new
    end
  end

  private
  def awards_params
    params.require(:award).permit(:name, :description, :image)
  end

end
