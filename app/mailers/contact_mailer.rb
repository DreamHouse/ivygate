class ContactMailer < ActionMailer::Base
  default from: "mailer@ivygaterealty.com"
  
  def new_contact_email
    mail(to: "maojiayin@gmail.com", subject: "Form submitted: Clients interested in selling a property")
  end
end
