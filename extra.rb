module Extra

  def self.is_prime?(num)
    return false if num < 2
    (2..Math.sqrt(num)).each { |i| return false if (num % i).zero? }
    true
  end

  def self.gcd(a, b)
    b == 0 ? a : gcd(b, a % b)
  end

  def self.lcm(a, b)
    (a * b) / gcd(a, b)
  end

  def self.flatten_hash(hash, prefix = nil)
    hash.each_with_object({}) do |(k, v), h|
      key = prefix ? "#{prefix}.#{k}" : k.to_s
      if v.is_a?(Hash)
        h.merge!(flatten_hash(v, key))
      else
        h[key] = v
      end
    end
  end

  def self.most_common(arr)
    arr.group_by(&:itself).max_by { |_, v| v.size }&.first
  end

  def self.transpose(matrix)
    matrix[0].zip(*matrix[1..-1])
  end

  def self.camel_to_snake(str)
    str.gsub(/([A-Z])/, '_\1').downcase.sub(/^_/, '')
  end

  def self.swap_case(str)
    str.chars.map { |c| c =~ /[A-Z]/ ? c.downcase : c.upcase }.join
  end

  def self.nested_sum(arr)
    arr.reduce(0) do |sum, el|
      sum + (el.is_a?(Array) ? nested_sum(el) : el.to_i)
    end
  end

  def self.digit_sum(num)
    num.to_s.chars.map(&:to_i).reduce(:+)
  end

end