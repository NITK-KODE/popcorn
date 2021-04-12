class Deletions < ActiveRecord::Migration[6.1]
  def change
    drop_table :memberships
    drop_table :groups

  end
end
