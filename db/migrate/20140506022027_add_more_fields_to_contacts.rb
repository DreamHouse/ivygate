class AddMoreFieldsToContacts < ActiveRecord::Migration
  def change
    add_column :contact_requests, :interests, :string
    add_column :contact_requests, :features, :string
  end
end
