class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :destination_url
      t.string :short_url
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
