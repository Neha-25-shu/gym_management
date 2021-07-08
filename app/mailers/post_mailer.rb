class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created()
    @user = params[:user]
    attachments['gym.jpg'] = File.read('app/assets/images/gym.png')
    mail(
      from: "admin@gmail.com",
      to: ScheduleExercise.last.user.email,
      bcc: "secreat@gmail.com",
      subject: "New Assign Exercise"
    ) 
  end
end
