class CreateFundraisings < ActiveRecord::Migration
  def change
    create_table :fundraisings do |t|
      t.string :name
      t.string :description
      t.decimal :target_pledge_amount

      t.timestamps null: false
    end
  end
end
