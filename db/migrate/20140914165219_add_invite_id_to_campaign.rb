class AddInviteIdToCampaign < ActiveRecord::Migration
  def change
    change_table :campaigns do |t|
      t.string :invite_id, index: true
    end
  end
end
