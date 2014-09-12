class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.references :character, index: true
      t.references :campaign, index: true

      t.string :name, null: false
      t.text :description
      t.integer :weight
      t.integer :value

      t.timestamps

    end
  end
end
