class ResourceMailer < ActionMailer::Base
  default to: 'carlosprovisorio@icloud.com'
  def resource_email(name, description)
    @name = name
    @description = description
    mail(subject: 'Carlos Website - Add Resource')
  end
end
