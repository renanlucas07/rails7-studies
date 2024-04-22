# frozen_string_literal: true

# Post
class Post < ApplicationRecord
  belongs_to :user

  def author
    user.name
  end
end
