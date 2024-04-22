require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "reset_password_instructions" do
    mail = UserMailer.reset_password_instructions
    assert_equal "Reset password instructions", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
