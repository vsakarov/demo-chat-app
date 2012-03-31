module ApplicationHelper
  def emoticons(text)
    text = text.gsub ':)', '&#x1F60A;'
    text = text.gsub /:P/i, '&#x1F60B;'
    text = text.gsub /:D/i, '&#x1F604;'
  end
end
