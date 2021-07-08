class ContactJob < ApplicationJob
  queue_as :default

  def perform
    PostMailer.post_created.deliver_later
  end
end
