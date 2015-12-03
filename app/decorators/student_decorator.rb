class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    sum = subject_item.subject_item_notes.sum(:value).to_f
    count = subject_item.subject_item_notes.count.to_f
    count > 0 ? (result = (sum/count)) : (result = count)

    return sprintf('%.2f', result)
  end

  def format_birthdate
  	birthdate.strftime('%Y-%m-%d') if birthdate.present?
  end
end
