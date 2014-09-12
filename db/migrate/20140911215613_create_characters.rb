class CreateCharacters < ActiveRecord::Migration

  def change
    create_table :characters do |t|
      t.references :user, index: true

      t.string :name, null: false
      t.text :description

      t.integer :race
      t.integer :type
      t.integer :weight, default: 0
      t.integer :height, default: 0
      t.integer :level, default: 0
      t.integer :experience, default: 0

      t.timestamps
    end
  end

end
