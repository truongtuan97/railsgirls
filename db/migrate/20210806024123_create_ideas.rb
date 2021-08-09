class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
