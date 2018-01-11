class RenameColumnText < ActiveRecord::Migration[5.1]
  def change
  	rename_column :subjects, :text, :description
  end
end
