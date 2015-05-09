class UserMailer < ActionMailer::Base
  default from: "do-no-reply@example.com"
  
  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
