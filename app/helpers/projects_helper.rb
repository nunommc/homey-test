module ProjectsHelper
  def project_status_badge(project)
    classes = ["badge"]

    classes << case project.status
    when "draft"
      "badge-ghost"
    when "in_progress"
      "badge-primary"
    when "closed"
      "badge-secondary"
    when "archived"
      "badge-neutral"
    end

    content_tag(:div, class: classes) do
      project.status.upcase
    end
  end
end
