class CreateFitnessClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_classes do |t|
      t.string :name
      t.belongs_to :instructor
      t.belongs_to :member
      t.datetime :datetime

      t.timestamps
    end
  end
end
