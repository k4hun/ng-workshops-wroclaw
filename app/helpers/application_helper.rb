module ApplicationHelper
  def active?(*paths)
    'active' if paths.any?{ |path| current_page?(path) }
  end

  def subject_items
    SubjectItem.where(teacher_id: nil)
  end
end
