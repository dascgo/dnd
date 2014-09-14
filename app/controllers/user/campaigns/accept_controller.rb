class User::Campaigns::AcceptController < User::Campaigns::BaseController


  def create
    @campaign = current_user.campaigns.find(params[:campaign_id])
    @character = Character.where(id: params[:character_id], campaign_id: @campaign.id).first
    @character.update(campaign_status: 1)
    redirect_to user_campaign_path(@campaign)
  end


end