class AddFileAwardColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :awards, :image, :string
  end
end
