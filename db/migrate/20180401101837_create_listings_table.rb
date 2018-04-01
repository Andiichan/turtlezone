class CreateListingsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.text :description, null: false
    end
  end
end
