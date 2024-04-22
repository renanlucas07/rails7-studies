# frozen_string_literal: true

# AddStatusToUsers
class AddStatusToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :status, :boolean, default: true
  end
end
