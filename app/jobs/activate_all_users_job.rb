class ActivateAllUsersJob < Que::Job
  def run
    User.transaction do
      User.all.find_in_batches do |users|
        users.each { |user| user.activate! }
      end
      finish
    end
  end
end
