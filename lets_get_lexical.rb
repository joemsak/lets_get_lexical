class Lexical
  def initialize(file)
    @file = file
  end

  def word_count
    words.size.to_f
  end

  def unique_word_count
    unique_words.size.to_f
  end

  def lexical_density
    (unique_word_count / word_count) * 100
  end

  private
  def words
    @words ||= @file.read.split
  end

  def unique_words
    words.uniq
  end
end
