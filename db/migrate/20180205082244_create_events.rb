class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :ev_title
      t.text :ev_description

      t.timestamps
    end
  end
end
