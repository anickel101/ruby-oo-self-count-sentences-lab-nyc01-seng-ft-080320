require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    array = self.chars.slice_before do |x|
      x == "!" || x == "?" || x == "."
    end.to_a
    array.delete_if {|sent| sent.length < 2}.count
  end

end

test = "This is my test sentence. It's great! It's fine. No, it's great!!!" 
# => test.count_sentences should == 4

#binding.pry


