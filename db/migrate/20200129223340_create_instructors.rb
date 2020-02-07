class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.text :background
      t.string :username
      t.string :password_digest
      

      t.timestamps
    end
  end
end
