class ContactMailer < ActionMailer::Base
  default to: 'carlosprovisorio@icloud.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Carlos Website - Form Message')
  end

  def resource_email(name, description)
    @name = name
    @description = description
    mail(subject: 'Carlos Website - Add Resource')
  end
end
