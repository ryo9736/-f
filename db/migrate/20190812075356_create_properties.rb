class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :price
      t.string :adress
      t.string :age
      t.text :content

      t.timestamps
    end
  end
end
