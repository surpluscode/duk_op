class AddFeaturedAttribute < ActiveRecord::Migration
  def change
    add_column :events, :featured, :boolean, default: false
    add_index :events, :featured
  end
end
