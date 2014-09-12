class AddCampaignToCharacter < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.references :campaign, index: true
    end
  end
end
