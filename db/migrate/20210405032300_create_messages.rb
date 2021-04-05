class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :author
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
