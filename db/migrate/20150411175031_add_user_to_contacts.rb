class AddUserToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :users
  end
end
