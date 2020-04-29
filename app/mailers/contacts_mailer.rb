class ContactsMailer < ActionMailer::Base
  default from: "charlotte770@hotmail.com"

  def contact_email(contact)
    @contact = contact
    mail( :to => "charlotte770@hotmail.com", :subject => "Message de Ômanette")
  end
end
