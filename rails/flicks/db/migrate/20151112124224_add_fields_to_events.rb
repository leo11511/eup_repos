class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :movies, :description, :text
    add_column :movies, :realised_on, :date
  end
end
