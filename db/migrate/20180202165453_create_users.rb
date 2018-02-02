class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :screen_name
      t.string :password
      t.integer :permission

      t.timestamps
    end
  end
end
