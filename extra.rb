module Extra

  def self.random_string(length=10)
    chars = [*'A'..'Z', *'a'..'z', *'0'..'9']
    (0...length).map { chars.sample }.join
  end

  def self.factorial(n)
    return 1 if n == 0
    n * factorial(n - 1)
  end

  def self.is_palindrome?(str)
    s = str.downcase.gsub(/\s+/, "")
    s == s.reverse
  end

  def self.unique_elements(arr)
    arr.uniq
  end

  def self.flatten_list(nested_arr)
    nested_arr.flatten
  end

  def self.fibonacci(n)
    a, b = 0, 1
    n.times { a, b = b, a + b }
    a
  end

  def self.count_vowels(str)
    str.count("aeiouAEIOU")
  end

  def self.merge_hashes(*hashes)
    hashes.reduce({}, :merge)
  end

  def self.reverse_words(sentence)
    sentence.split.map(&:reverse).join(" ")
  end

  def self.chunk_list(arr, chunk_size)
    arr.each_slice(chunk_size).to_a
  end

end