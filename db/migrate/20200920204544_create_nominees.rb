class CreateNominees < ActiveRecord::Migration[6.0]
  def change
    create_table :nominees do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography
      t.string :video
      t.references :award

      t.timestamps
    end
  end
end
