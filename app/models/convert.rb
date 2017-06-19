class Convert

  include ActiveModel::Model

  attr_accessor :text

  validates_presence_of :text

  def shatro
    result = ""
    text.split(" ").each do |word|
      array = word.split(/([aeiou])/, 2)
      result << array[2]
      result << array[0]
      result << array[1]
      result << " "
    end
    result.rstrip
  end

end
