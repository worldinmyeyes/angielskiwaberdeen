class Message < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :telephone
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :content, :validate => true

  attribute :nickname, :captcha => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Angielski w Aberdeen - Formularz kontaktowy",
      :to => "angielskiwaberdeen@gmail.com",
      :from => %("#{first_name} #{last_name}" <#{email}>)
    }
  end
end
