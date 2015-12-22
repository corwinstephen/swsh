class AddOrgNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :org_name, :string, null: false
    add_column :users, :description, :text, null: false
    add_column :users, :open, :boolean, null: false, default: false
  end
end
