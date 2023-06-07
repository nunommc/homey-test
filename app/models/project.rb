class Project < ApplicationRecord
  has_many :messages
  has_many :project_status_logs

  enum status: {
    draft: 0,
    in_progress: 1,
    closed: -1,
    archived: -2
  }

  after_create :log_status
  before_update :log_status, if: -> { status_changed? }

  private

  def log_status
    project_status_logs.create(status: status)
  end
end
