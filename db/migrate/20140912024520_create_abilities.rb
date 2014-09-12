class CreateAbilities < ActiveRecord::Migration

  def change
    create_table :abilities do |t|
      t.references :character, index: true

      t.string :name, null: false
      t.text :description
      t.integer :value
      t.integer :modifier

      t.timestamps
    end
  end


end
