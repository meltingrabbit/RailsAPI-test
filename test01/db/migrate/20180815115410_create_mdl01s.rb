class CreateMdl01s < ActiveRecord::Migration[5.2]
  def change
    create_table :mdl01s do |t|
      t.string :name
      t.integer :age
      t.text :disc

      t.timestamps
    end
  end
end
