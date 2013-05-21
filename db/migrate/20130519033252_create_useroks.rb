class CreateUseroks < ActiveRecord::Migration
  def change
    create_table :useroks do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
