class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|

      t.references :user, index: true

      t.string :name, null: false
      t.text :description

      t.timestamps

    end
  end
end
