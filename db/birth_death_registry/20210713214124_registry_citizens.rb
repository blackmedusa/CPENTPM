class RegistryCitizens < ActiveRecord::Migration[6.0]
  def change
    create_table :registry_citizens do |t|
      t.text :first_name, null: false
      t.text :last_name, null: false

      t.integer :general_id, null: false, unique: true
      t.string :description, null: false

      t.timestamps
    end
  end
end
