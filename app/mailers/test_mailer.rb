class TestMailer < ApplicationMailer
  default from: 'rlucas@fullstacklabs.co'

  def hello
    @greeting = "Hi"

    mail to: "rlucas@fullstacklabs.co",
         track_opens: 'true',
         message_stream: 'outbound'
  end
end
