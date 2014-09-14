class User::Campaigns::RejectController < User::Campaigns::BaseController


  def create
    @campaign = current_user.campaigns.find(params[:campaign_id])
    @character = Character.where(id: params[:character_id], campaign_id: @campaign.id).first
    @character.update(campaign_id: nil, campaign_status: 0)
    redirect_to user_campaign_path(@campaign)
  end


end