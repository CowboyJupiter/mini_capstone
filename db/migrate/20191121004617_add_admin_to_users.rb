class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :user, :admin, :boolean
  end
end
