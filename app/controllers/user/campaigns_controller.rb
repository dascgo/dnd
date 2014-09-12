class User::CampaignsController < User::BaseController


  def index
  end


  def new
  end


  def create
    @campaign = current_user.campaigns.create(campaign_params)

    redirect_to user_campaign_path(@campaign)
  end


  def show
    @campaign = current_user.campaigns.find(params[:id])
  end


  private


  def campaign_params
    params.require(:campaign).permit(:name, :description)
  end


end