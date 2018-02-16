class CreateWhatnews < ActiveRecord::Migration[5.1]
  def change
    create_table :whatnews do |t|
      t.string :caption
      t.text :text
      t.string :tag

      t.timestamps
    end
  end
end
