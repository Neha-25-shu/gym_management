class ContactJob < ApplicationJob
  queue_as :default

  def perform(@user_id)
    PostMailer.post_created.deliver_later
  end
end
