class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :creator, null: false, foreign_key: true
      t.belongs_to :entryable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
