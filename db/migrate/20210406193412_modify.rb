class Modify < ActiveRecord::Migration[6.1]
  def change
    add_column :users , :username , :string
    add_column :users , :birthday , :datetime
    add_column :users , :instagram , :string
    add_column :users , :twitter , :string
    add_column :users , :facebook , :string
    add_column :users , :description , :string

  end
end
