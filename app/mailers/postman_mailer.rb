class PostmanMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.postman_mailer.signup_alert.subject
  #
  def signup_alert(object)
    @object=object

    mail to: "#{@object.email}",subject: "Signup successful!!"
  end

  def reset_password_notification(user,temp_password)
    @user=user
    @new_password=temp_password
    mail to: "#{@user.email}",subject: "Reset your password!!"
  end
end
