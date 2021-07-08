class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  CONTACT_EMAIL = "nehashukla199725@gmail.com"

  def post_created
    @user = params[:user]
    @greeting = "Hi"
    attachments['python.jpg'] = File.read('app/assets/images/python.png')
    mail(
      from: "admin@gmail.com",
      to: CONTACT_EMAIL,
      cc: User.all.pluck(:email),
      bcc: "secreat@gmail.com",
      subject: "Assign Exercise"
    ) 
  end
end
