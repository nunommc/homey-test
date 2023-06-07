class ProjectStatusLog < ApplicationRecord
  enum status: {
    draft: 0,
    in_progress: 1,
    closed: -1,
    archived: -2
  }
end
