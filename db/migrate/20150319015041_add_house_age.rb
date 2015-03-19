class AddHouseAge < ActiveRecord::Migration
  def change
    add_column :contact_requests, :houseAge, :string
  end
end
