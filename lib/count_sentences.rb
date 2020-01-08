require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # https://stackoverflow.com/questions/26146558/using-more-than-one-delimiter-for-split-method-in-ruby
    # Don't count "!!" or ".." as multiple sentences
    # https://apidock.com/ruby/Enumerable/reject
    self.split(/[.!?]/).reject {|x| x.size < 2}.count
  end
end