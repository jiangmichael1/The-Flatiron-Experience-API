class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :skills
      t.integer :coding_knowledge
      t.string :img_url
      t.integer :turns

      t.timestamps
    end
  end
end
