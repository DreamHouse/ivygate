class ContactMailer < ActionMailer::Base
  default from: "mailer@ivygaterealty.com"
  
  def new_contact_email(contact)
    @contact = contact
    if (@contact.contactType == 'Seller')
      @message = "Clients interested in selling a property"
    elsif (@contact.contactType == 'Buyer')
      @message = "Clients interested in buying a property"
    else
      @message = "Clients interested in contacting"
    end

    mail(to: "paulhuangrealtor@gmail.com", cc: "maojiayin@gmail.com", subject: "Form submitted: #{@message}")
  end
end
