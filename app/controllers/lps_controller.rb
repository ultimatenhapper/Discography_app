class LpsController < ApplicationController
  #before_action :set_artist

  def index
    @lps = Lp.all
  end

  def new
    render plain: params[:lps].inspect
    @lp = Lp.new
  end

  def create
    @lp = Lp.new(lp_params)

    if @lp.save
      flash[:notice] = "LP was successfully created"
    else
      render new
  end

  def show
    @lp = Lp.find(param[:id])
  end

  private
    def lp_params
      params.require(:lp).permit(:name, :description)
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
  end
end
