class AddRentedToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :rented, :boolean, default: false
  end
end
