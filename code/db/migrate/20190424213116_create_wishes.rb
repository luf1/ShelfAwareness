class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :author
      t.text :details

      t.timestamps
    end
  end
end
