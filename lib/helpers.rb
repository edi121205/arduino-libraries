class String
  def keyize
    self.gsub(/([A-Z]+)([A-Z][a-z])/,'\1-\2').
    gsub(/([a-z\d])([A-Z])/,'\1-\2').
    gsub(/\s+/,'-').
    downcase
  end
end


def link_to(text, href=nil)
  href=text if href.nil?
  "<a href='#{href}'>#{text}</a>"
end

def pretty_list(list)
  if list.nil?
    "<i>Unknown</i>"
  elsif list == ['*']
    "All"
  else
    list.join(', ')
  end
end

def format_filesize(bytes)
  Filesize.new(bytes).pretty
end
