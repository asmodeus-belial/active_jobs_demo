class UpdateUsersJob < ApplicationJob
  queue_as :default

  def perform
    timestamp = Time.now.strftime("%B %e, %Y %l:%M %p")
    UserDetail.update_all(profile: "Profile from job #{timestamp}")
  end
end
