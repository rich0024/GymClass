class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
