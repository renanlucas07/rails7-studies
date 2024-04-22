# frozen_string_literal: true

# UserMailer
class UserMailer < ApplicationMailer
  default from: 'rlucas@fullstacklabs.co'

  def reset_password_instructions(user, token, _opts = {})
    @user = user
    @token = token

    mail to: @user.email,
         track_opens: 'true',
         message_stream: 'outbound'
  end
end
