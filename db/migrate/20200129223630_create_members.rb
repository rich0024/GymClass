class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :username
      t.string :password digest

      t.timestamps
    end
  end
end
