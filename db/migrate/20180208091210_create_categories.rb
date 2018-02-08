class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.column :name, :string
      t.column :logo, :string

      t.timestamps
    end
  end
end
