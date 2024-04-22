require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  setup do
    @user = users(:one)
    sign_in @user
  end
  test "reset_password_instructions" do
    mail = UserMailer.reset_password_instructions(@user, @user.reset_password_token)
    assert_equal "Reset password instructions", mail.subject
    assert_equal [@user.email], mail.to
    assert_equal ["rlucas@fullstacklabs.co"], mail.from
  end

end
