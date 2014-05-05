class AddContactFields < ActiveRecord::Migration
  def change
    add_column :contact_requests, :comments, :text
    add_column :contact_requests, :firstName, :string
    add_column :contact_requests, :lastName, :string
    add_column :contact_requests, :phoneArea, :string
    add_column :contact_requests, :phoneLocal, :string
    add_column :contact_requests, :phoneNumber, :string
    add_column :contact_requests, :bestTimeReach, :string
    add_column :contact_requests, :contactType, :string
    add_column :contact_requests, :squareFeet, :string
    add_column :contact_requests, :bedrooms, :string
    add_column :contact_requests, :bathrooms, :string
    add_column :contact_requests, :address, :string
    add_column :contact_requests, :street, :string
    add_column :contact_requests, :unitOrSuite, :string
    add_column :contact_requests, :city, :string
    add_column :contact_requests, :state, :string
    add_column :contact_requests, :postalCode, :string
    add_column :contact_requests, :county, :string
    add_column :contact_requests, :area, :string
  end
end
