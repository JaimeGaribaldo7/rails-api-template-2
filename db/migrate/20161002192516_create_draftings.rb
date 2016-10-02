class CreateDraftings < ActiveRecord::Migration
  def change
    create_table :draftings do |t|
      t.string :nickname
      t.references :team, index: true, foreign_key: true
      t.references :pokemon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
