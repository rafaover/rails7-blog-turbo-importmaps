class CommentsMailer < ApplicationMailer
  def submitted(comment)
    @comment = comment

    mail to: "rafamsilva@gmail.com", subject: "New comment!"
  end
end
