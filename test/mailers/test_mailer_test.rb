require "test_helper"

class TestMailerTest < ActionMailer::TestCase
  test "hello" do
    mail = TestMailer.hello
    assert_equal "Hello", mail.subject
    assert_equal ["rlucas@fullstacklabs.co"], mail.to
    assert_equal ["rlucas@fullstacklabs.co"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
