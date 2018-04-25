require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    i = 0
    new_array = self.split(/[?!.]/)
    new_array.count do |sentence|
      if sentence.length > 0
        i += 1
      end
    end
    return i
  end
end
