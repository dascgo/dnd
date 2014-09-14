class AddCampaignStatusToCharacter < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.integer :campaign_status, default: 0
    end
  end
end
