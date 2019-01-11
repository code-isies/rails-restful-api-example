class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :email_verified
      t.integer :age

      t.timestamps
    end
  end
end
