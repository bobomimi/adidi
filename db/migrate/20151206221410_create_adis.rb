class CreateAdis < ActiveRecord::Migration
  def change
    create_table :adis do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
