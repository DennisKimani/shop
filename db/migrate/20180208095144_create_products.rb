class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :detail, :string
      t.column :price, :integer
      t.column :image, :string
      t.column :category_id, :integer
      t.timestamps
    end
  end
end
