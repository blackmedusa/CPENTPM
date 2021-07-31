class CreateAwards < ActiveRecord::Migration[6.0]
  def change
    create_table :awards do |t|
      t.text :name, null: false, unique: true
      t.string :description, null: false

      t.timestamps
    end
  end
end
