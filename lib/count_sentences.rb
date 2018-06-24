require 'pry'

class String

  def sentence?
      self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    count = 0
    # self.each_char { |chr|  count += 1 if chr == "." || chr == "!" || chr == "?"}
    # this code doesn't work for: "Hi!! I am Nhinh...."
    for i in 0..self.length do
      count += 1 if ((self[i] == "." || self[i] == "!" || self[i] == "?") && self[i+1] != self[i])
    end
    count
  end
end
