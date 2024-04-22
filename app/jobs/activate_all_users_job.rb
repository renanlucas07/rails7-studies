# frozen_string_literal: true

# ActivateAllUsersJob
class ActivateAllUsersJob < Que::Job
  def run
    User.transaction do
      User.all.find_in_batches do |users|
        users.each(&:activate!)
      end
      finish
    end
  end
end
