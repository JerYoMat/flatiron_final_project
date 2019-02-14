class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.belongs_to :user_role 
      t.string :uid 
      t.string :provider 
      t.timestamps
    end
    add_index :users, :email, unique: true 
  end
end
