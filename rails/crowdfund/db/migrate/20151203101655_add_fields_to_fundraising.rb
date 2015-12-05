class AddFieldsToFundraising < ActiveRecord::Migration
  def change
    add_column :fundraisings, :website, :string
    add_column :fundraisings, :pledgin_end_on, :date
  end
end
