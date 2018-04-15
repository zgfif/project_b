class Addimagetowhatnews < ActiveRecord::Migration[5.1]
  def change
  	add_column :whatnews, :imagenews, :string
  end
end
