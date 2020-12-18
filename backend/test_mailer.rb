# Call this in a Rails console to test:
#     TestMailer.with(name: "Tyliah", email_to: "you@domain.com").greetings.deliver_now
class TestMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def greetings
    @name = params[:name]
    mail(to: params[:email_to], subject: "Welcome to My Awesome Site")
  end
end
