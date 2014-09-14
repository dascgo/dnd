class InviteController < ApplicationController

  def show
    @campaign = Campaign.find_by(invite_id: params[:id])
  end

  def create
    @campaign = Campaign.find_by(invite_id: params[:invite_id])
    @character = current_user.characters.find(params[:character_id])
    @character.update(campaign_id: @campaign.id)
    redirect_to user_campaign_path(@campaign)
  end

end