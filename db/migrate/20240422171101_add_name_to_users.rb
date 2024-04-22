# frozen_string_literal: true

# AddNameToUsers
class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
  end
end
