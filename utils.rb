def greet(name)
  puts "Hello from #{name}!"
end

# 1. Reverse a string
def reverse_string_1(s)
  s.reverse
end

# 2. Check if string is palindrome
def palindrome_2(s)
  s.downcase == s.downcase.reverse
end

# 3. Capitalize first letter of each word
def capitalize_words_3(s)
  s.split.map(&:capitalize).join(' ')
end

# 4. Count vowels in a string
def count_vowels_4(s)
  s.count("aeiouAEIOU")
end

# 5. Remove duplicates from array
def unique_array_5(arr)
  arr.uniq
end

# 6. Flatten nested arrays
def flatten_array_6(arr)
  arr.flatten
end

# 7. Check if array is sorted ascending
def sorted_array_7?(arr)
  arr == arr.sort
end

# 8. Merge two hashes
def merge_hashes_8(h1, h2)
  h1.merge(h2)
end

# 9. Count words in a string
def word_count_9(s)
  s.split.size
end

# 10. Find max element in array
def max_element_10(arr)
  arr.max
end

# 11. Find min element in array
def min_element_11(arr)
  arr.min
end

# 12. Remove nil elements from array
def compact_array_12(arr)
  arr.compact
end

# 13. Check if string contains only digits
def digits_only_13?(s)
  /\A\d+\z/.match?(s)
end

# 14. Repeat string n times
def repeat_string_14(s, n)
  s * n
end

# 15. Reverse words in a sentence
def reverse_words_15(s)
  s.split.reverse.join(' ')
end

# 16. Check if array contains element
def contains_element_16?(arr, elem)
  arr.include?(elem)
end

# 17. Convert string to array of characters
def string_to_char_array_17(s)
  s.chars
end

# 18. Convert array of characters to string
def char_array_to_string_18(arr)
  arr.join
end

# 19. Sum elements in array
def sum_array_19(arr)
  arr.reduce(0, :+)
end

# 20. Average of array elements
def average_array_20(arr)
  arr.sum / arr.size.to_f
end

# 21. Find all substrings of a string
def substrings_21(s)
  result = []
  (0...s.length).each do |start_idx|
    (start_idx...s.length).each do |end_idx|
      result << s[start_idx..end_idx]
    end
  end
  result
end

# 22. Remove whitespace from string ends
def strip_string_22(s)
  s.strip
end

# 23. Join array elements with a delimiter
def join_array_23(arr, delimiter = ',')
  arr.join(delimiter)
end

# 24. Sort array ascending
def sort_array_24(arr)
  arr.sort
end

# 25. Sort array descending
def sort_array_desc_25(arr)
  arr.sort.reverse
end

# 26. Check if all elements satisfy predicate
def all_satisfy_26?(arr)
  arr.all? { |e| yield(e) }
end

# 27. Check if any element satisfies predicate
def any_satisfy_27?(arr)
  arr.any? { |e| yield(e) }
end

# 28. Filter array by predicate
def filter_array_28(arr)
  arr.select { |e| yield(e) }
end

# 29. Map array with block
def map_array_29(arr)
  arr.map { |e| yield(e) }
end

# 30. Remove duplicates preserving order
def uniq_preserve_order_30(arr)
  seen = {}
  arr.select { |e| !seen[e] && (seen[e] = true) }
end

# 31. Convert array to hash with indices as keys
def array_to_hash_31(arr)
  arr.each_with_index.to_h
end

# 32. Invert hash keys and values
def invert_hash_32(h)
  h.invert
end

# 33. Find intersection of two arrays
def intersect_arrays_33(arr1, arr2)
  arr1 & arr2
end

# 34. Find difference of two arrays
def difference_arrays_34(arr1, arr2)
  arr1 - arr2
end

# 35. Count frequency of elements in array
def frequency_count_35(arr)
  arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
end

# 36. Check if string is numeric (integer or float)
def numeric_string_36?(s)
  !!Float(s) rescue false
end

# 37. Generate random string of given length
def random_string_37(len)
  chars = ('a'..'z').to_a + ('0'..'9').to_a
  Array.new(len) { chars.sample }.join
end

# 38. Repeat each element in array n times
def repeat_elements_38(arr, n)
  arr.flat_map { |e| [e] * n }
end

# 39. Chunk array into subarrays of size n
def chunk_array_39(arr, n)
  arr.each_slice(n).to_a
end

# 40. Reverse hash (assuming values unique)
def reverse_hash_40(h)
  h.invert
end

# 41. Get keys from hash as array
def hash_keys_41(h)
  h.keys
end

# 42. Get values from hash as array
def hash_values_42(h)
  h.values
end

# 43. Merge multiple hashes
def merge_multiple_hashes_43(*hashes)
  hashes.reduce({}, :merge)
end

# 44. Deep copy of hash (nested)
def deep_copy_hash_44(h)
  Marshal.load(Marshal.dump(h))
end

# 45. Check if array is empty
def empty_array_45?(arr)
  arr.empty?
end

# 46. Remove nil or empty strings from array
def compact_strings_46(arr)
  arr.reject { |e| e.nil? || e == '' }
end

# 47. Remove whitespace-only strings from array
def remove_whitespace_strings_47(arr)
  arr.reject { |e| e.strip.empty? }
end

# 48. Generate array of numbers in range
def range_array_48(start_val, end_val)
  (start_val..end_val).to_a
end

# 49. Find index of element in array
def index_of_element_49(arr, elem)
  arr.index(elem)
end

# 50. Join hash keys with delimiter as string
def join_hash_keys_50(h, delimiter = ',')
  h.keys.join(delimiter)
end

# 51. Join hash values with delimiter as string
def join_hash_values_51(h, delimiter = ',')
  h.values.join(delimiter)
end

# 52. Check if string contains only letters
def letters_only_52?(s)
  /^[a-zA-Z]+$/.match?(s)
end

# 53. Remove punctuation from string
def remove_punctuation_53(s)
  s.gsub(/[[:punct:]]/, '')
end

# 54. Count uppercase letters in string
def count_uppercase_54(s)
  s.count("A-Z")
end

# 55. Count lowercase letters in string
def count_lowercase_55(s)
  s.count("a-z")
end

# 56. Convert string to snake_case
def to_snake_case_56(s)
  s.gsub(/::/, '/')
   .gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
   .gsub(/([a-z\d])([A-Z])/,'\1_\2')
   .tr("-", "_")
   .downcase
end

# 57. Convert string to camelCase
def to_camel_case_57(s)
  parts = s.split('_')
  parts[0] + parts[1..].map(&:capitalize).join
end

# 58. Extract digits from string as array
def extract_digits_58(s)
  s.scan(/\d/).map(&:to_i)
end

# 59. Extract numbers from string as array
def extract_numbers_59(s)
  s.scan(/\d+/).map(&:to_i)
end

# 60. Remove vowels from string
def remove_vowels_60(s)
  s.gsub(/[aeiouAEIOU]/, '')
end

# 61. Count consonants in string
def count_consonants_61(s)
  s.count("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ")
end

# 62. Repeat string n times with separator
def repeat_string_sep_62(s, n, sep = ' ')
  ([s] * n).join(sep)
end

# 63. Check if array contains duplicates
def contains_duplicates_63?(arr)
  arr.uniq.length != arr.length
end

# 64. Find longest word in string
def longest_word_64(s)
  s.split.max_by(&:length)
end

# 65. Find shortest word in string
def shortest_word_65(s)
  s.split.min_by(&:length)
end

# 66. Sort hash by keys
def sort_hash_by_keys_66(h)
  h.sort.to_h
end

# 67. Sort hash by values
def sort_hash_by_values_67(h)
  h.sort_by { |k, v| v }.to_h
end

# 68. Group array elements by their length
def group_by_length_68(arr)
  arr.group_by(&:length)
end

# 69. Convert array to hash counting frequencies
def frequencies_to_hash_69(arr)
  arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
end

# 70. Swap keys and values in hash (assumes unique values)
def swap_hash_70(h)
  h.invert
end

# 71. Calculate factorial recursively
def factorial_71(n)
  return 1 if n <= 1
  n * factorial_71(n - 1)
end

# 72. Fibonacci number (recursive)
def fibonacci_72(n)
  return n if n <= 1
  fibonacci_72(n - 1) + fibonacci_72(n - 2)
end

# 73. Find nth Fibonacci number (iterative)
def fibonacci_iter_73(n)
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end

# 74. Check if number is prime
def prime_74?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

# 75. Sum digits of a number
def sum_digits_75(n)
  n.to_s.chars.map(&:to_i).sum
end

# 76. Convert number to binary string
def to_binary_76(n)
  n.to_s(2)
end

# 77. Convert binary string to integer
def from_binary_77(s)
  s.to_i(2)
end

# 78. Find greatest common divisor (GCD)
def gcd_78(a, b)
  b == 0 ? a : gcd_78(b, a % b)
end

# 79. Find least common multiple (LCM)
def lcm_79(a, b)
  (a * b) / gcd_78(a, b)
end

# 80. Reverse array
def reverse_array_80(arr)
  arr.reverse
end

# 81. Check if array is palindrome
def palindrome_array_81?(arr)
  arr == arr.reverse
end

# 82. Remove nil values from hash
def compact_hash_82(h)
  h.reject { |k, v| v.nil? }
end

# 83. Convert array of arrays to hash
def array_to_hash_83(arr)
  arr.to_h
end

# 84. Check if hash contains key
def hash_has_key_84?(h, key)
  h.key?(key)
end

# 85. Check if hash contains value
def hash_has_value_85?(h, value)
  h.value?(value)
end

# 86. Filter hash by keys with block
def filter_hash_keys_86(h)
  h.select { |k, _| yield(k) }
end

# 87. Filter hash by values with block
def filter_hash_values_87(h)
  h.select { |_, v| yield(v) }
end

# 88. Map hash values with block
def map_hash_values_88(h)
  h.transform_values { |v| yield(v) }
end

# 89. Swap elements at two indices in array
def swap_array_elements_89(arr, i, j)
  arr[i], arr[j] = arr[j], arr[i]
  arr
end

# 90. Generate array of random integers
def random_int_array_90(size, min = 0, max = 100)
  Array.new(size) { rand(min..max) }
end

# 91. Find all indexes of an element in array
def all_indexes_91(arr, elem)
  arr.each_index.select { |i| arr[i] == elem }
end

# 92. Get unique elements that appear exactly once
def unique_once_92(arr)
  arr.select { |e| arr.count(e) == 1 }
end

# 93. Remove elements from array that satisfy block
def reject_if_93(arr)
  arr.reject { |e| yield(e) }
end

# 94. Convert string to array of words
def string_to_words_94(s)
  s.split
end

# 95. Convert array of words to string
def words_to_string_95(arr)
  arr.join(' ')
end

# 96. Calculate power recursively
def power_96(base, exp)
  return 1 if exp == 0
  base * power_96(base, exp - 1)
end

# 97. Generate range array with step
def range_with_step_97(start_val, end_val, step = 1)
  (start_val..end_val).step(step).to_a
end

# 98. Calculate sum of squares of array elements
def sum_squares_98(arr)
  arr.map { |x| x**2 }.sum
end

# 99. Find index of max element in array
def index_of_max_99(arr)
  arr.each_with_index.max[1]
end

# 100. Find index of min element in array
def index_of_min_100(arr)
  arr.each_with_index.min[1]
end

# 101. Remove duplicates and sort array
def unique_sorted_101(arr)
  arr.uniq.sort
end

# 102. Calculate median of array
def median_102(arr)
  sorted = arr.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

# 103. Calculate mode(s) of array
def mode_103(arr)
  freq = arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  max_freq = freq.values.max
  freq.select { |k, v| v == max_freq }.keys
end

# 104. Convert array to CSV string
def array_to_csv_104(arr)
  arr.join(',')
end

# 105. Convert CSV string to array
def csv_to_array_105(s)
  s.split(',')
end

# 106. Shuffle array randomly
def shuffle_array_106(arr)
  arr.shuffle
end

# 107. Generate random password (letters + digits)
def random_password_107(length = 12)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  Array.new(length) { chars.sample }.join
end

# 108. Convert string to title case
def title_case_108(s)
  s.split.map(&:capitalize).join(' ')
end

# 109. Remove duplicates ignoring case
def uniq_ignore_case_109(arr)
  seen = {}
  arr.select { |e| !seen[e.downcase] && (seen[e.downcase] = true) }
end

# 110. Extract email addresses from string
def extract_emails_110(s)
  s.scan(/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z]{2,}\b/i)
end

# 111. Validate email format
def valid_email_111?(email)
  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.match?(email)
end

# 112. Convert array of hashes to CSV string (keys as headers)
def hashes_to_csv_112(arr)
  keys = arr.first.keys
  lines = [keys.join(',')]
  arr.each { |h| lines << keys.map { |k| h[k] }.join(',') }
  lines.join("\n")
end

# 113. Parse CSV string to array of hashes (with headers)
def csv_to_hashes_113(csv_str)
  lines = csv_str.split("\n")
  keys = lines.shift.split(',')
  lines.map do |line|
    values = line.split(',')
    keys.zip(values).to_h
  end
end

# 114. Deep merge two hashes (recursive)
def deep_merge_hashes_114(h1, h2)
  h1.merge(h2) do |key, oldval, newval|
    oldval.is_a?(Hash) && newval.is_a?(Hash) ? deep_merge_hashes_114(oldval, newval) : newval
  end
end

# 115. Convert seconds to hh:mm:ss format
def seconds_to_hms_115(seconds)
  Time.at(seconds).utc.strftime("%H:%M:%S")
end

# 116. Convert hh:mm:ss string to total seconds
def hms_to_seconds_116(hms)
  parts = hms.split(':').map(&:to_i)
  parts[0] * 3600 + parts[1] * 60 + parts[2]
end

# 117. Calculate Levenshtein distance between two strings
def levenshtein_117(s, t)
  m = s.length
  n = t.length
  d = Array.new(m+1) { Array.new(n+1) }
  (0..m).each { |i| d[i][0] = i }
  (0..n).each { |j| d[0][j] = j }
  (1..m).each do |i|
    (1..n).each do |j|
      cost = s[i-1] == t[j-1] ? 0 : 1
      d[i][j] = [
        d[i-1][j] + 1,
        d[i][j-1] + 1,
        d[i-1][j-1] + cost
      ].min
    end
  end
  d[m][n]
end

# 118. Check if string is valid JSON
require 'json'
def valid_json_118?(json_str)
  JSON.parse(json_str)
  true
rescue JSON::ParserError
  false
end

# 119. Deep freeze hash and nested hashes
def deep_freeze_hash_119(h)
  h.each { |k, v| v.is_a?(Hash) ? deep_freeze_hash_119(v) : v.freeze }
  h.freeze
end

# 120. Find unique characters in string
def unique_chars_120(s)
  s.chars.uniq
end

# 121. Calculate Hamming distance between two strings
def hamming_distance_121(s1, s2)
  raise ArgumentError if s1.length != s2.length
  s1.chars.zip(s2.chars).count { |a, b| a != b }
end

# 122. Rotate array left by n positions
def rotate_left_122(arr, n)
  n %= arr.length
  arr.drop(n) + arr.take(n)
end

# 123. Rotate array right by n positions
def rotate_right_123(arr, n)
  n %= arr.length
  arr.drop(arr.length - n) + arr.take(arr.length - n)
end

# 124. Check if two arrays are anagrams (same elements, any order)
def anagram_arrays_124?(arr1, arr2)
  arr1.sort == arr2.sort
end

# 125. Remove elements from array by value
def remove_elements_125(arr, *vals)
  arr.reject { |e| vals.include?(e) }
end

# 126. Group array elements by first letter
def group_by_first_letter_126(arr)
  arr.group_by { |w| w[0] }
end

# 127. Convert symbol keys of hash to strings
def symbol_keys_to_strings_127(h)
  h.transform_keys(&:to_s)
end

# 128. Convert string keys of hash to symbols
def string_keys_to_symbols_128(h)
  h.transform_keys(&:to_sym)
end

# 129. Extract domain from URL string
def extract_domain_129(url)
  uri = URI.parse(url)
  uri.host
rescue URI::InvalidURIError
  nil
end

# 130. Check if string contains substring (case insensitive)
def contains_substring_ci_130?(s, sub)
  s.downcase.include?(sub.downcase)
end

# 131. Generate UUID v4 string
require 'securerandom'
def generate_uuid_131
  SecureRandom.uuid
end

# 132. Find duplicate elements in array
def duplicates_132(arr)
  arr.group_by { |e| e }.select { |_, v| v.size > 1 }.keys
end

# 133. Pad string to a certain length with spaces (right)
def pad_right_133(s, length)
  s.ljust(length)
end

# 134. Pad string to a certain length with spaces (left)
def pad_left_134(s, length)
  s.rjust(length)
end

# 135. Check if string is uppercase
def uppercase_string_135?(s)
  s == s.upcase && s =~ /[A-Z]/
end

# 136. Check if string is lowercase
def lowercase_string_136?(s)
  s == s.downcase && s =~ /[a-z]/
end

# 137. Extract hashtags from string
def extract_hashtags_137(s)
  s.scan(/#\w+/)
end

# 138. Remove HTML tags from string
def strip_html_tags_138(s)
  s.gsub(/<[^>]*>/, '')
end

# 139. Check if array is subset of another
def subset_139?(subset, superset)
  (subset - superset).empty?
end

# 140. Find common elements between arrays
def common_elements_140(arr1, arr2)
  arr1 & arr2
end

# 141. Capitalize only the first character of string
def capitalize_first_141(s)
  s[0].upcase + s[1..-1]
end

# 142. Convert string to ASCII values array
def string_to_ascii_142(s)
  s.bytes
end

# 143. Convert ASCII values array to string
def ascii_to_string_143(arr)
  arr.pack('C*')
end

# 144. Calculate sum of elements squared minus mean squared
def variance_144(arr)
  mean = arr.sum / arr.size.to_f
  arr.sum { |x| (x - mean) ** 2 } / arr.size
end

# 145. Check if two strings are anagrams
def anagram_strings_145?(s1, s2)
  s1.downcase.chars.sort == s2.downcase.chars.sort
end

# 146. Generate array with repeated elements n times
def repeated_elements_146(elem, n)
  Array.new(n, elem)
end

# 147. Get first n elements of array
def first_n_elements_147(arr, n)
  arr.take(n)
end

# 148. Get last n elements of array
def last_n_elements_148(arr, n)
  arr.last(n)
end

# 149. Check if string starts with substring
def starts_with_149?(s, prefix)
  s.start_with?(prefix)
end

# 150. Check if string ends with substring
def ends_with_150?(s, suffix)
  s.end_with?(suffix)
end

# 151. Repeat each character in string n times
def repeat_chars_151(s, n)
  s.chars.map { |c| c * n }.join
end

# 152. Remove all whitespace from string
def remove_whitespace_152(s)
  s.gsub(/\s+/, '')
end

# 153. Convert array of strings to integers (ignoring invalid)
def strings_to_ints_153(arr)
  arr.map { |s| Integer(s) rescue nil }.compact
end

# 154. Convert integer to Roman numeral
def int_to_roman_154(num)
  values = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
    100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
  }
  roman = ""
  values.each do |value, letter|
    while num >= value
      roman << letter
      num -= value
    end
  end
  roman
end

# 155. Find all substrings of given length
def substrings_of_length_155(s, length)
  (0..s.length - length).map { |i| s[i, length] }
end

# 156. Convert array to hash counting word lengths
def count_word_lengths_156(arr)
  arr.each_with_object(Hash.new(0)) { |w, h| h[w.length] += 1 }
end

# 157. Convert array of words to sentence with Oxford comma
def oxford_comma_157(arr)
  case arr.length
  when 0 then ''
  when 1 then arr[0]
  when 2 then arr.join(' and ')
  else
    arr[0..-2].join(', ') + ", and " + arr[-1]
  end
end

# 158. Check if string contains only digits
def digits_only_158?(s)
  /\A\d+\z/.match?(s)
end

# 159. Calculate dot product of two vectors (arrays)
def dot_product_159(v1, v2)
  raise ArgumentError unless v1.size == v2.size
  v1.zip(v2).map { |a, b| a * b }.sum
end

# 160. Convert hash to array of key=value strings
def hash_to_kv_strings_160(h)
  h.map { |k, v| "#{k}=#{v}" }
end

# 161. Filter array by regex pattern on strings
def filter_by_regex_161(arr, pattern)
  arr.select { |s| s =~ pattern }
end

# 162. Remove elements from array that are nil or empty string
def remove_nil_and_empty_162(arr)
  arr.reject { |e| e.nil? || e == '' }
end

# 163. Return first non-nil element in array
def first_non_nil_163(arr)
  arr.find { |e| !e.nil? }
end

# 164. Generate Fibonacci sequence up to n terms
def fibonacci_sequence_164(n)
  seq = [0, 1]
  (n - 2).times { seq << seq[-1] + seq[-2] }
  seq.take(n)
end

# 165. Check if string is valid URL
require 'uri'
def valid_url_165?(url)
  uri = URI.parse(url)
  %w[http https].include?(uri.scheme)
rescue URI::InvalidURIError
  false
end

# 166. Normalize array: subtract mean and divide by std dev
def normalize_array_166(arr)
  mean = arr.sum / arr.size.to_f
  variance = arr.sum { |x| (x - mean) ** 2 } / arr.size
  std_dev = Math.sqrt(variance)
  arr.map { |x| (x - mean) / std_dev }
end

# 167. Check if array is sorted ascending
def sorted_ascending_167?(arr)
  arr.each_cons(2).all? { |a, b| a <= b }
end

# 168. Check if array is sorted descending
def sorted_descending_168?(arr)
  arr.each_cons(2).all? { |a, b| a >= b }
end

# 169. Find all palindromic substrings in string
def palindromic_substrings_169(s)
  palindromes = []
  (0...s.length).each do |start_idx|
    (start_idx...s.length).each do |end_idx|
      sub = s[start_idx..end_idx]
      palindromes << sub if sub == sub.reverse && sub.length > 1
    end
  end
  palindromes.uniq
end

# 170. Generate all permutations of array elements
def permutations_170(arr)
  arr.permutation.to_a
end

# 171. Check if string contains balanced parentheses
def balanced_parentheses_171?(s)
  count = 0
  s.each_char do |c|
    count += 1 if c == '('
    count -= 1 if c == ')'
    return false if count < 0
  end
  count.zero?
end

# 172. Remove duplicates but preserve order
def unique_ordered_172(arr)
  seen = {}
  arr.select { |x| !seen[x] && (seen[x] = true) }
end

# 173. Convert binary string to decimal integer
def binary_to_decimal_173(s)
  s.to_i(2)
end

# 174. Convert decimal integer to hex string
def decimal_to_hex_174(n)
  n.to_s(16)
end

# 175. Calculate Euclidean distance between two points (arrays)
def euclidean_distance_175(p1, p2)
  Math.sqrt(p1.zip(p2).sum { |a, b| (a - b) ** 2 })
end

# 176. Get all keys from nested hash
def nested_hash_keys_176(h)
  keys = []
  h.each do |k, v|
    keys << k
    keys.concat(nested_hash_keys_176(v)) if v.is_a?(Hash)
  end
  keys
end

# 177. Deep copy an object using Marshal
def deep_copy_177(obj)
  Marshal.load(Marshal.dump(obj))
end

# 178. Return unique elements common to two arrays
def intersection_unique_178(arr1, arr2)
  arr1 & arr2
end

# 179. Find max element and its index in array
def max_with_index_179(arr)
  max_val = arr.max
  [max_val, arr.index(max_val)]
end

# 180. Find min element and its index in array
def min_with_index_180(arr)
  min_val = arr.min
  [min_val, arr.index(min_val)]
end

# 181. Convert hash to query string
def hash_to_query_181(h)
  h.map { |k, v| "#{URI.encode_www_form_component(k.to_s)}=#{URI.encode_www_form_component(v.to_s)}" }.join('&')
end

# 182. Parse query string to hash
def query_to_hash_182(query)
  URI.decode_www_form(query).to_h
end

# 183. Round float to n decimal places
def round_float_183(f, n)
  f.round(n)
end

# 184. Generate all subsets (power set) of array
def power_set_184(arr)
  (0..arr.size).flat_map { |n| arr.combination(n).to_a }
end

# 185. Find longest common prefix of strings array
def longest_common_prefix_185(arr)
  return '' if arr.empty?
  prefix = arr.min
  arr.each do |s|
    while !s.start_with?(prefix)
      prefix = prefix[0...-1]
      return '' if prefix.empty?
    end
  end
  prefix
end

# 186. Remove leading and trailing whitespace
def trim_186(s)
  s.strip
end

# 187. Capitalize each word in sentence except small words
def capitalize_except_small_187(s)
  small_words = %w[a an and as at but by for if in nor of on or so the to up yet]
  s.split.map.with_index do |word, i|
    (i == 0 || !small_words.include?(word.downcase)) ? word.capitalize : word.downcase
  end.join(' ')
end

# 188. Generate unique random integers within range
def unique_randoms_188(count, min, max)
  raise ArgumentError if count > (max - min + 1)
  (min..max).to_a.sample(count)
end

# 189. Check if string is valid IPv4 address
def valid_ipv4_189?(ip)
  parts = ip.split('.')
  return false unless parts.length == 4
  parts.all? { |p| p =~ /^\d+$/ && p.to_i.between?(0, 255) }
end

# 190. Remove duplicate words from string
def unique_words_190(s)
  s.split.uniq.join(' ')
end

# 191. Merge two arrays into hash (keys and values)
def arrays_to_hash_191(keys, values)
  keys.zip(values).to_h
end

# 192. Convert string to array of unicode codepoints
def string_to_codepoints_192(s)
  s.codepoints
end

# 193. Replace vowels in string with '*'
def censor_vowels_193(s)
  s.gsub(/[aeiouAEIOU]/, '*')
end

# 194. Check if string contains only alphabetic characters
def alpha_only_194?(s)
  /\A[a-zA-Z]+\z/.match?(s)
end

# 195. Convert array of integers to comma-separated string
def int_array_to_csv_195(arr)
  arr.join(',')
end

# 196. Get nth Fibonacci number (recursive)
def fibonacci_n_196(n)
  return n if n <= 1
  fibonacci_n_196(n - 1) + fibonacci_n_196(n - 2)
end

# 197. Remove duplicates from array in place
def remove_duplicates_inplace_197(arr)
  seen = {}
  arr.reject! { |x| seen[x] ? true : (seen[x] = false) }
  arr
end

# 198. Convert integer to binary string with padding
def int_to_bin_padded_198(n, length)
  n.to_s(2).rjust(length, '0')
end

# 199. Check if array contains any nil elements
def contains_nil_199?(arr)
  arr.any?(&:nil?)
end

# 200. Swap case of all characters in string
def swap_case_200(s)
  s.swapcase
end

# 201. Check if string is palindrome (ignoring case and spaces)
def palindrome_ignore_case_201?(s)
  s_clean = s.downcase.gsub(/\s+/, '')
  s_clean == s_clean.reverse
end

# 202. Count occurrences of substring in string
def count_substring_202(s, sub)
  s.scan(/(?=#{Regexp.escape(sub)})/).count
end

# 203. Convert array of strings to symbols
def array_to_symbols_203(arr)
  arr.map(&:to_sym)
end

# 204. Flatten array to single level
def flatten_array_204(arr)
  arr.flatten
end

# 205. Calculate factorial iteratively
def factorial_iter_205(n)
  (1..n).reduce(1, :*)
end

# 206. Convert hash keys to uppercase strings
def uppercase_hash_keys_206(h)
  h.transform_keys { |k| k.to_s.upcase }
end

# 207. Convert array to hash with indices as values
def array_to_index_hash_207(arr)
  arr.each_with_index.to_h
end

# 208. Convert camelCase string to snake_case
def camel_to_snake_208(str)
  str.gsub(/([A-Z])/, '_\1').downcase.sub(/^_/, '')
end

# 209. Generate random string of given length (alphanumeric)
def random_string_209(length)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  Array.new(length) { chars.sample }.join
end

# 210. Remove duplicates from array preserving order
def unique_ordered_210(arr)
  seen = {}
  arr.select { |x| !seen[x] && (seen[x] = true) }
end

# 211. Deep merge two hashes
def deep_merge_211(h1, h2)
  h1.merge(h2) do |key, old_val, new_val|
    old_val.is_a?(Hash) && new_val.is_a?(Hash) ? deep_merge_211(old_val, new_val) : new_val
  end
end

# 212. Convert seconds to HH:MM:SS format
def seconds_to_hms_212(seconds)
  h = seconds / 3600
  m = (seconds % 3600) / 60
  s = seconds % 60
  format("%02d:%02d:%02d", h, m, s)
end

# 213. Calculate Levenshtein distance between two strings
def levenshtein_distance_213(s, t)
  m = s.length
  n = t.length
  return n if m == 0
  return m if n == 0

  d = Array.new(m + 1) { Array.new(n + 1) }

  (0..m).each { |i| d[i][0] = i }
  (0..n).each { |j| d[0][j] = j }

  (1..m).each do |i|
    (1..n).each do |j|
      cost = s[i - 1] == t[j - 1] ? 0 : 1
      d[i][j] = [
        d[i - 1][j] + 1,
        d[i][j - 1] + 1,
        d[i - 1][j - 1] + cost
      ].min
    end
  end
  d[m][n]
end

# 214. Check if array is a palindrome
def array_palindrome_214?(arr)
  arr == arr.reverse
end

# 215. Rotate array left by n elements
def rotate_left_215(arr, n)
  n = n % arr.size
  arr[n..-1] + arr[0...n]
end

# 216. Rotate array right by n elements
def rotate_right_216(arr, n)
  n = n % arr.size
  arr[-n..-1] + arr[0...-n]
end

# 217. Remove nil values from array
def remove_nil_217(arr)
  arr.compact
end

# 218. Check if string contains any uppercase letters
def contains_uppercase_218?(s)
  s =~ /[A-Z]/ ? true : false
end

# 219. Convert array of integers to hex string array
def ints_to_hex_strings_219(arr)
  arr.map { |i| i.to_s(16) }
end

# 220. Check if two arrays have same elements regardless of order
def arrays_equal_unordered_220?(a, b)
  a.sort == b.sort
end

# 221. Find second largest element in array
def second_largest_221(arr)
  arr.uniq.sort[-2]
end

# 222. Sum all even numbers in array
def sum_even_222(arr)
  arr.select(&:even?).sum
end

# 223. Capitalize first letter of each sentence in string
def capitalize_sentences_223(s)
  s.split(/(?<=\.|\?|!)\s/).map(&:capitalize).join(' ')
end

# 224. Find longest word in string
def longest_word_224(s)
  s.split.max_by(&:length)
end

# 225. Get array of ASCII codes for characters in string
def ascii_codes_225(s)
  s.bytes
end

# 226. Convert array to hash where keys are elements and values are counts
def frequency_hash_226(arr)
  arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
end

# 227. Find index of first vowel in string
def first_vowel_index_227(s)
  s.index(/[aeiouAEIOU]/)
end

# 228. Check if string is a valid email address
def valid_email_228?(email)
  email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i ? true : false
end

# 229. Convert integer to ordinal string (e.g. 1 -> 1st)
def ordinal_229(n)
  abs_n = n.abs
  if (11..13).include?(abs_n % 100)
    "#{n}th"
  else
    case abs_n % 10
    when 1 then "#{n}st"
    when 2 then "#{n}nd"
    when 3 then "#{n}rd"
    else "#{n}th"
    end
  end
end

# 230. Sum of digits in integer
def sum_digits_230(n)
  n.to_s.chars.map(&:to_i).sum
end

# 231. Generate n random booleans
def random_bools_231(n)
  Array.new(n) { [true, false].sample }
end

# 232. Count number of words in string
def word_count_232(s)
  s.split.size
end

# 233. Check if string starts with uppercase letter
def starts_with_uppercase_233?(s)
  s[0] =~ /[A-Z]/
end

# 234. Repeat string n times with separator
def repeat_string_sep_234(s, n, sep = ' ')
  ([s] * n).join(sep)
end

# 235. Return elements in array that appear more than once
def duplicates_235(arr)
  arr.group_by(&:itself).select { |_, v| v.size > 1 }.keys
end

# 236. Convert array of numbers to array of their squares
def squares_236(arr)
  arr.map { |x| x**2 }
end

# 237. Convert string to title case
def title_case_237(s)
  s.split.map(&:capitalize).join(' ')
end

# 238. Find minimum and maximum in array
def min_max_238(arr)
  [arr.min, arr.max]
end

# 239. Generate random password with letters and digits
def random_password_239(length)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  Array.new(length) { chars.sample }.join
end

# 240. Check if number is prime
def prime_240?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

# 241. Merge two arrays alternating elements
def merge_alternate_241(arr1, arr2)
  arr1.zip(arr2).flatten.compact
end

# 242. Find all anagrams of a word from array
def find_anagrams_242(word, arr)
  sorted_word = word.chars.sort.join
  arr.select { |w| w.chars.sort.join == sorted_word }
end

# 243. Check if string is valid hex color code
def valid_hex_color_243?(s)
  s =~ /\A#?(?:[A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\z/ ? true : false
end

# 244. Remove HTML tags from string
def remove_html_tags_244(s)
  s.gsub(/<\/?[^>]*>/, '')
end

# 245. Return last n elements of array
def last_n_elements_245(arr, n)
  arr.last(n)
end

# 246. Generate array with values from start to end (inclusive)
def range_array_246(start_val, end_val)
  (start_val..end_val).to_a
end

# 247. Find common elements in multiple arrays
def common_elements_247(*arrays)
  arrays.reduce(&:&)
end

# 248. Convert string to array of words
def words_array_248(s)
  s.split
end

# 249. Replace all digits in string with '#'
def mask_digits_249(s)
  s.gsub(/\d/, '#')
end

# 250. Reverse order of words in sentence
def reverse_words_250(s)
  s.split.reverse.join(' ')
end

# 251. Check if string contains only digits
def digits_only_251?(s)
  s.match?(/\A\d+\z/)
end

# 252. Remove leading and trailing whitespace from string
def trim_252(s)
  s.strip
end

# 253. Find all indexes of a substring in string
def all_substring_indexes_253(s, sub)
  indexes = []
  i = 0
  while i = s.index(sub, i)
    indexes << i
    i += 1
  end
  indexes
end

# 254. Convert array of strings to uppercase
def uppercase_array_254(arr)
  arr.map(&:upcase)
end

# 255. Check if string is numeric (integer or float)
def numeric_string_255?(s)
  Float(s) != nil rescue false
end

# 256. Calculate average of numeric array
def average_256(arr)
  return nil if arr.empty?
  arr.sum.to_f / arr.size
end

# 257. Remove duplicates from array of strings (case insensitive)
def unique_case_insensitive_257(arr)
  seen = {}
  arr.select { |s| (down = s.downcase) && !seen[down] && (seen[down] = true) }
end

# 258. Convert string to ASCII codes separated by spaces
def ascii_codes_str_258(s)
  s.bytes.join(' ')
end

# 259. Group array elements by their first letter
def group_by_first_letter_259(arr)
  arr.group_by { |s| s[0] }
end

# 260. Find all prime numbers up to n
def primes_up_to_260(n)
  sieve = Array.new(n+1, true)
  sieve[0] = sieve[1] = false
  (2..Math.sqrt(n)).each do |i|
    next unless sieve[i]
    (i*i..n).step(i) { |j| sieve[j] = false }
  end
  sieve.each_index.select { |i| sieve[i] }
end

# 261. Return array elements that start with given prefix
def starts_with_prefix_261(arr, prefix)
  arr.select { |s| s.start_with?(prefix) }
end

# 262. Check if hash has all keys present in array
def hash_has_keys_262?(hash, keys)
  keys.all? { |k| hash.key?(k) }
end

# 263. Convert snake_case string to camelCase
def snake_to_camel_263(str)
  parts = str.split('_')
  parts[1..].map!(&:capitalize)
  parts.join
end

# 264. Repeat array elements n times
def repeat_array_264(arr, n)
  arr * n
end

# 265. Find difference between two arrays
def array_difference_265(a, b)
  a - b
end

# 266. Convert boolean to string "true"/"false"
def bool_to_str_266(b)
  b ? "true" : "false"
end

# 267. Remove all spaces from string
def remove_spaces_267(s)
  s.delete(' ')
end

# 268. Get initials from full name string
def initials_268(name)
  name.split.map { |word| word[0].upcase }.join
end

# 269. Convert array of numbers to comma-separated string
def array_to_csv_269(arr)
  arr.join(',')
end

# 270. Sum of squares of numbers in array
def sum_of_squares_270(arr)
  arr.map { |x| x**2 }.sum
end

# 271. Check if two strings are anagrams
def anagrams_271?(s1, s2)
  s1.chars.sort == s2.chars.sort
end

# 272. Extract digits from string as integer
def extract_digits_272(s)
  s.scan(/\d/).join.to_i
end

# 273. Calculate GCD of two numbers
def gcd_273(a, b)
  b == 0 ? a : gcd_273(b, a % b)
end

# 274. Calculate LCM of two numbers
def lcm_274(a, b)
  (a * b) / gcd_273(a, b)
end

# 275. Replace multiple spaces with single space
def normalize_spaces_275(s)
  s.gsub(/\s+/, ' ')
end

# 276. Convert float to percentage string with 2 decimals
def float_to_percentage_276(f)
  "#{(f * 100).round(2)}%"
end

# 277. Convert array of strings to lowercase
def lowercase_array_277(arr)
  arr.map(&:downcase)
end

# 278. Reverse array in place
def reverse_in_place_278(arr)
  arr.reverse!
end

# 279. Check if string contains substring ignoring case
def contains_substring_ignore_case_279?(s, sub)
  s.downcase.include?(sub.downcase)
end

# 280. Calculate median of numeric array
def median_280(arr)
  sorted = arr.sort
  len = sorted.length
  return nil if len == 0
  if len.odd?
    sorted[len/2]
  else
    (sorted[len/2 - 1] + sorted[len/2]) / 2.0
  end
end

# 281. Remove duplicate characters from string preserving order
def unique_chars_281(s)
  seen = {}
  s.chars.select { |c| !seen[c] && (seen[c] = true) }.join
end

# 282. Format float number with commas as thousands separator
def format_number_commas_282(n)
  n.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

# 283. Convert string to array of lines
def string_to_lines_283(s)
  s.lines.map(&:chomp)
end

# 284. Find longest common prefix in array of strings
def longest_common_prefix_284(arr)
  return '' if arr.empty?
  prefix = arr[0]
  arr.each do |s|
    while !s.start_with?(prefix)
      prefix = prefix[0...-1]
      break if prefix.empty?
    end
  end
  prefix
end

# 285. Calculate power of a number (recursive)
def power_285(base, exp)
  return 1 if exp == 0
  base * power_285(base, exp - 1)
end

# 286. Count vowels in string
def count_vowels_286(s)
  s.count('aeiouAEIOU')
end

# 287. Find elements common in two arrays
def common_elements_287(a, b)
  a & b
end

# 288. Convert integer to binary string
def int_to_binary_288(n)
  n.to_s(2)
end

# 289. Convert binary string to integer
def binary_to_int_289(s)
  s.to_i(2)
end

# 290. Check if string is a valid IPv4 address
def valid_ipv4_290?(ip)
  return false unless ip =~ /\A(\d{1,3}\.){3}\d{1,3}\z/
  ip.split('.').all? { |part| part.to_i.between?(0,255) }
end

# 291. Remove vowels from string
def remove_vowels_291(s)
  s.gsub(/[aeiouAEIOU]/, '')
end

# 292. Sort hash by values descending
def sort_hash_by_values_desc_292(h)
  h.sort_by { |_, v| -v }.to_h
end

# 293. Create a range array with step
def range_with_step_293(start_val, end_val, step)
  (start_val..end_val).step(step).to_a
end

# 294. Check if string is a pangram
def pangram_294?(s)
  letters = ('a'..'z').to_a
  downcased = s.downcase
  letters.all? { |l| downcased.include?(l) }
end

# 295. Find max product of two elements in array
def max_product_295(arr)
  sorted = arr.sort
  [sorted[-1] * sorted[-2], sorted[0] * sorted[1]].max
end

# 296. Convert snake_case to kebab-case
def snake_to_kebab_296(str)
  str.tr('_', '-')
end

# 297. Validate if string is a strong password (length >=8, uppercase, lowercase, digit)
def strong_password_297?(s)
  s.length >= 8 && s =~ /[A-Z]/ && s =~ /[a-z]/ && s =~ /\d/
end

# 298. Reverse characters in each word of string
def reverse_chars_each_word_298(s)
  s.split.map(&:reverse).join(' ')
end

# 299. Find all permutations of string characters
def permutations_299(s)
  s.chars.permutation.map(&:join).uniq
end

# 300. Get number of days between two dates
require 'date'
def days_between_dates_300(d1, d2)
  (Date.parse(d1) - Date.parse(d2)).to_i.abs
end

# 301. Convert array of strings to title case
def title_case_array_301(arr)
  arr.map { |s| s.split.map(&:capitalize).join(' ') }
end

# 302. Calculate factorial of a number (iterative)
def factorial_302(n)
  (1..n).reduce(1, :*)
end

# 303. Check if string is palindrome ignoring case and spaces
def palindrome_ignore_case_space_303?(s)
  normalized = s.downcase.gsub(/\s+/, '')
  normalized == normalized.reverse
end

# 304. Convert hex string to integer
def hex_to_int_304(hex_str)
  hex_str.to_i(16)
end

# 305. Convert integer to hex string
def int_to_hex_305(n)
  n.to_s(16)
end

# 306. Merge two hashes with summing values of same keys
def merge_hashes_sum_values_306(h1, h2)
  h1.merge(h2) { |_, v1, v2| v1 + v2 }
end

# 307. Get all substrings of a string
def all_substrings_307(s)
  substrings = []
  (0...s.length).each do |start_i|
    (start_i...s.length).each do |end_i|
      substrings << s[start_i..end_i]
    end
  end
  substrings
end

# 308. Check if array is sorted ascending
def sorted_asc_308?(arr)
  arr.each_cons(2).all? { |a, b| a <= b }
end

# 309. Flatten nested arrays recursively
def flatten_recursive_309(arr)
  arr.flat_map { |e| e.is_a?(Array) ? flatten_recursive_309(e) : e }
end

# 310. Count occurrences of each character in string
def char_count_310(s)
  counts = Hash.new(0)
  s.each_char { |c| counts[c] += 1 }
  counts
end

# 311. Remove nil or empty strings from array
def compact_and_clean_311(arr)
  arr.compact.reject(&:empty?)
end

# 312. Calculate sum of digits of an integer
def sum_digits_312(n)
  n.to_s.chars.map(&:to_i).sum
end

# 313. Find second largest number in array
def second_largest_313(arr)
  sorted = arr.uniq.sort
  sorted[-2]
end

# 314. Convert array of integers to string with spaces
def int_array_to_str_314(arr)
  arr.join(' ')
end

# 315. Get common prefix length of two strings
def common_prefix_length_315(s1, s2)
  len = [s1.length, s2.length].min
  (0...len).each { |i| return i if s1[i] != s2[i] }
  len
end

# 316. Check if string contains only alphabetic characters
def alpha_only_316?(s)
  s.match?(/\A[a-zA-Z]+\z/)
end

# 317. Remove duplicates from array preserving order
def unique_preserve_order_317(arr)
  seen = {}
  arr.select { |x| !seen[x] && (seen[x] = true) }
end

# 318. Generate Fibonacci sequence of n numbers
def fibonacci_318(n)
  return [] if n <= 0
  return [0] if n == 1
  seq = [0, 1]
  (n-2).times { seq << seq[-1] + seq[-2] }
  seq
end

# 319. Get keys from hash whose values satisfy a condition
def keys_with_values_319(h, &block)
  h.select { |_, v| block.call(v) }.keys
end

# 320. Replace all digits in string with '*'
def mask_digits_320(s)
  s.gsub(/\d/, '*')
end

# 321. Calculate sum of elements at even indexes
def sum_even_indexes_321(arr)
  arr.each_with_index.select { |_, i| i.even? }.map(&:first).sum
end

# 322. Group words by their length
def group_by_length_322(arr)
  arr.group_by(&:length)
end

# 323. Remove duplicate characters from string (case insensitive)
def unique_chars_case_insensitive_323(s)
  seen = {}
  s.chars.select { |c| !seen[c.downcase] && (seen[c.downcase] = true) }.join
end

# 324. Count number of words in string
def word_count_324(s)
  s.split.size
end

# 325. Find max element and its index in array
def max_with_index_325(arr)
  max_val = arr.max
  [max_val, arr.index(max_val)]
end

# 326. Generate array of random integers between min and max
def random_int_array_326(size, min, max)
  Array.new(size) { rand(min..max) }
end

# 327. Calculate power set of array (all subsets)
def power_set_327(arr)
  (0..arr.size).flat_map { |n| arr.combination(n).to_a }
end

# 328. Check if array contains duplicates
def contains_duplicates_328?(arr)
  arr.uniq.size != arr.size
end

# 329. Rotate array by n positions to the right
def rotate_right_329(arr, n)
  n = n % arr.size
  arr[-n..-1] + arr[0...-n]
end

# 330. Sum all even numbers in array
def sum_even_numbers_330(arr)
  arr.select(&:even?).sum
end

# 331. Find index of first vowel in string
def first_vowel_index_331(s)
  s.index(/[aeiouAEIOU]/)
end

# 332. Convert string to array of words reversed
def reversed_words_332(s)
  s.split.reverse
end

# 333. Capitalize first letter of each sentence in string
def capitalize_sentences_333(s)
  s.gsub(/(?:^|[.!?]\s+)([a-z])/) { $1.upcase }
end

# 334. Find longest word in array
def longest_word_334(arr)
  arr.max_by(&:length)
end

# 335. Check if number is palindrome
def palindrome_number_335?(n)
  s = n.to_s
  s == s.reverse
end

# 336. Get unique elements present in either of two arrays (union)
def union_arrays_336(a, b)
  (a | b)
end

# 337. Calculate average word length in string
def average_word_length_337(s)
  words = s.split
  return 0 if words.empty?
  words.map(&:length).sum.to_f / words.size
end

# 338. Check if string contains only hexadecimal characters
def hex_only_338?(s)
  s.match?(/\A[\da-fA-F]+\z/)
end

# 339. Generate array of even numbers up to n
def evens_up_to_339(n)
  (2..n).select(&:even?)
end

# 340. Count how many times each word appears in string
def word_frequency_340(s)
  freq = Hash.new(0)
  s.downcase.scan(/\w+/).each { |w| freq[w] += 1 }
  freq
end

# 341. Sort array of strings by length descending
def sort_by_length_desc_341(arr)
  arr.sort_by { |s| -s.length }
end

# 342. Remove all punctuation from string
def remove_punctuation_342(s)
  s.gsub(/[[:punct:]]/, '')
end

# 343. Find element that appears most frequently in array
def most_frequent_element_343(arr)
  arr.group_by(&:itself).max_by { |_, v| v.size }&.first
end

# 344. Calculate absolute difference between two arrays of numbers
def abs_diff_arrays_344(a, b)
  (a - b) + (b - a)
end

# 345. Replace all vowels in string with a given character
def replace_vowels_345(s, char)
  s.gsub(/[aeiouAEIOU]/, char)
end

# 346. Sum numbers in a nested array recursively
def sum_nested_array_346(arr)
  arr.flatten.reduce(0) { |sum, n| sum + (n.is_a?(Numeric) ? n : 0) }
end

# 347. Check if string contains only whitespace
def only_whitespace_347?(s)
  s.strip.empty?
end

# 348. Get all unique pairs from array
def unique_pairs_348(arr)
  arr.combination(2).to_a
end

# 349. Get the intersection of multiple arrays
def intersection_multiple_349(arrays)
  arrays.reduce(&:&)
end

# 350. Check if number is even
def even_number_350?(n)
  n.even?
end

# 351. Check if a string contains any digits
def contains_digits_351?(s)
  s.match?(/\d/)
end

# 352. Remove all non-alphanumeric characters from string
def remove_non_alphanumeric_352(s)
  s.gsub(/[^a-zA-Z0-9]/, '')
end

# 353. Convert array of integers to array of strings
def int_to_str_array_353(arr)
  arr.map(&:to_s)
end

# 354. Find index of max element in array
def index_of_max_354(arr)
  arr.index(arr.max)
end

# 355. Count occurrences of element in array
def count_occurrences_355(arr, elem)
  arr.count(elem)
end

# 356. Generate an array with n copies of an element
def generate_copies_356(elem, n)
  Array.new(n, elem)
end

# 357. Sum elements at odd indexes in array
def sum_odd_indexes_357(arr)
  arr.each_with_index.select { |_, i| i.odd? }.map(&:first).sum
end

# 358. Convert string to array of characters excluding spaces
def chars_exclude_spaces_358(s)
  s.delete(' ').chars
end

# 359. Replace first occurrence of substring
def replace_first_359(s, old_sub, new_sub)
  s.sub(old_sub, new_sub)
end

# 360. Replace all occurrences of substring
def replace_all_360(s, old_sub, new_sub)
  s.gsub(old_sub, new_sub)
end

# 361. Check if array elements are all unique
def all_unique_361?(arr)
  arr.uniq.size == arr.size
end

# 362. Generate a random alphanumeric string of length n
def random_alphanumeric_362(n)
  chars = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map(&:to_a).flatten
  Array.new(n) { chars.sample }.join
end

# 363. Find longest substring without repeating characters
def longest_unique_substring_363(s)
  start_idx = 0
  max_len = 0
  max_sub = ''
  used = {}

  s.chars.each_with_index do |c, i|
    if used.key?(c) && used[c] >= start_idx
      start_idx = used[c] + 1
    end
    used[c] = i
    if i - start_idx + 1 > max_len
      max_len = i - start_idx + 1
      max_sub = s[start_idx..i]
    end
  end

  max_sub
end

# 364. Calculate sum of an array of floats
def sum_floats_364(arr)
  arr.map(&:to_f).sum
end

# 365. Create a hash mapping characters to their counts from a string
def char_frequency_hash_365(s)
  freq = Hash.new(0)
  s.each_char { |c| freq[c] += 1 }
  freq
end

# 366. Convert array of strings to JSON array string
require 'json'
def array_to_json_366(arr)
  arr.to_json
end

# 367. Find second smallest number in array
def second_smallest_367(arr)
  arr.uniq.sort[1]
end

# 368. Generate an array of factorials up to n
def factorials_up_to_368(n)
  (0..n).map { |i| (1..i).reduce(1, :*) }
end

# 369. Count number of uppercase letters in string
def count_uppercase_369(s)
  s.count('A-Z')
end

# 370. Convert string to camelCase
def to_camel_case_370(s)
  parts = s.split(/[_\-\s]/)
  parts[0] + parts[1..].map(&:capitalize).join
end

# 371. Reverse words in a string maintaining word order reversed
def reverse_word_order_371(s)
  s.split.reverse.join(' ')
end

# 372. Remove duplicate words from string
def unique_words_372(s)
  seen = {}
  s.split.select { |w| !seen[w] && (seen[w] = true) }.join(' ')
end

# 373. Get elements in an array divisible by n
def divisible_by_n_373(arr, n)
  arr.select { |x| x % n == 0 }
end

# 374. Find index of last occurrence of substring
def last_index_of_substring_374(s, sub)
  s.rindex(sub)
end

# 375. Pad string to a fixed length with given character
def pad_string_375(s, length, char = ' ')
  s.ljust(length, char)
end

# 376. Remove trailing zeros from float string
def remove_trailing_zeros_376(s)
  s.sub(/\.?0+$/, '')
end

# 377. Check if string ends with a substring
def ends_with_substring_377?(s, sub)
  s.end_with?(sub)
end

# 378. Convert array of integers to hexadecimal strings
def ints_to_hex_strings_378(arr)
  arr.map { |n| n.to_s(16) }
end

# 379. Sort an array of strings ignoring case
def sort_strings_ignore_case_379(arr)
  arr.sort_by(&:downcase)
end

# 380. Convert string to reversed ASCII codes string
def reversed_ascii_codes_380(s)
  s.bytes.reverse.join(' ')
end

# 381. Convert integer array to array of booleans where true means even
def even_flags_381(arr)
  arr.map(&:even?)
end

# 382. Count number of words starting with vowel in string
def words_starting_with_vowel_382(s)
  s.scan(/\b[aeiouAEIOU]\w*/).size
end

# 383. Generate a hash counting frequency of words in an array
def word_count_hash_383(arr)
  freq = Hash.new(0)
  arr.each { |w| freq[w] += 1 }
  freq
end

# 384. Merge two sorted arrays into a sorted array
def merge_sorted_arrays_384(a, b)
  (a + b).sort
end

# 385. Check if string contains any uppercase letters
def contains_uppercase_385?(s)
  s.match?(/[A-Z]/)
end

# 386. Convert string of comma-separated values to array of integers
def csv_to_int_array_386(s)
  s.split(',').map(&:to_i)
end

# 387. Check if number is prime
def prime_387?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

# 388. Find all indices of a character in string
def char_indices_388(s, c)
  indices = []
  s.chars.each_with_index { |ch, i| indices << i if ch == c }
  indices
end

# 389. Convert string to array of words with length greater than n
def words_longer_than_n_389(s, n)
  s.split.select { |w| w.length > n }
end

# 390. Check if two arrays are permutations of each other
def arrays_permutations_390?(a, b)
  a.sort == b.sort
end

# 391. Find max difference between elements in array
def max_difference_391(arr)
  arr.max - arr.min
end

# 392. Convert array of strings to array of reversed strings
def reverse_strings_in_array_392(arr)
  arr.map(&:reverse)
end

# 393. Replace all vowels in string with '*'
def mask_vowels_393(s)
  s.gsub(/[aeiouAEIOU]/, '*')
end

# 394. Count number of consonants in string
def count_consonants_394(s)
  s.count('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ')
end

# 395. Convert an integer to an array of its digits
def int_to_digit_array_395(n)
  n.to_s.chars.map(&:to_i)
end

# 396. Return first n elements of array
def first_n_elements_396(arr, n)
  arr.first(n)
end

# 397. Remove all duplicates from array (including duplicates of duplicates)
def remove_all_duplicates_397(arr)
  arr.select { |x| arr.count(x) == 1 }
end

# 398. Sort hash by keys ascending
def sort_hash_by_keys_398(h)
  h.sort.to_h
end

# 399. Return true if string is valid email (simple check)
def valid_email_399?(s)
  s.match?(/\A[^@\s]+@[^@\s]+\.[^@\s]+\z/)
end

# 400. Calculate sum of squares of odd numbers in array
def sum_squares_odd_400(arr)
  arr.select(&:odd?).map { |x| x**2 }.sum
end

# 401. Find the median of an array of numbers
def median_401(arr)
  sorted = arr.sort
  len = sorted.length
  return nil if len == 0
  mid = len / 2
  len.odd? ? sorted[mid] : (sorted[mid - 1] + sorted[mid]) / 2.0
end

# 402. Convert integer to binary string
def int_to_binary_402(n)
  n.to_s(2)
end

# 403. Check if two strings are anagrams
def anagram_403?(s1, s2)
  s1.downcase.chars.sort == s2.downcase.chars.sort
end

# 404. Remove vowels from string
def remove_vowels_404(s)
  s.gsub(/[aeiouAEIOU]/, '')
end

# 405. Find smallest missing positive integer in array
def smallest_missing_positive_405(arr)
  set = arr.select { |x| x > 0 }.to_set
  i = 1
  i += 1 while set.include?(i)
  i
end

# 406. Return array of unique characters in string
def unique_chars_406(s)
  s.chars.uniq
end

# 407. Repeat a string n times
def repeat_string_407(s, n)
  s * n
end

# 408. Convert array of integers to string with commas
def int_array_to_csv_408(arr)
  arr.join(',')
end

# 409. Remove all spaces from string
def remove_spaces_409(s)
  s.delete(' ')
end

# 410. Reverse the words in a sentence but keep word letters intact
def reverse_word_positions_410(s)
  s.split.reverse.join(' ')
end

# 411. Get first n prime numbers
def first_n_primes_411(n)
  primes = []
  candidate = 2
  while primes.size < n
    primes << candidate if (2..Math.sqrt(candidate)).none? { |i| candidate % i == 0 }
    candidate += 1
  end
  primes
end

# 412. Check if array is a palindrome
def palindrome_array_412?(arr)
  arr == arr.reverse
end

# 413. Remove duplicates from array and sort descending
def unique_sorted_desc_413(arr)
  arr.uniq.sort.reverse
end

# 414. Find longest palindrome substring in string (simple brute force)
def longest_palindrome_substring_414(s)
  max_pal = ''
  (0...s.length).each do |i|
    (i...s.length).each do |j|
      sub = s[i..j]
      max_pal = sub if sub == sub.reverse && sub.length > max_pal.length
    end
  end
  max_pal
end

# 415. Check if number is perfect square
def perfect_square_415?(n)
  sqrt = Math.sqrt(n)
  sqrt == sqrt.to_i
end

# 416. Merge two arrays alternately
def merge_alternate_416(a, b)
  result = []
  max_len = [a.length, b.length].max
  max_len.times do |i|
    result << a[i] if i < a.length
    result << b[i] if i < b.length
  end
  result
end

# 417. Sum digits in a string
def sum_digits_in_string_417(s)
  s.scan(/\d/).map(&:to_i).sum
end

# 418. Find all prime factors of a number
def prime_factors_418(n)
  factors = []
  divisor = 2
  while n > 1
    if n % divisor == 0
      factors << divisor
      n /= divisor
    else
      divisor += 1
    end
  end
  factors
end

# 419. Check if two arrays have any common elements
def arrays_intersect_419?(a, b)
  !(a & b).empty?
end

# 420. Convert string to snake_case
def to_snake_case_420(s)
  s.gsub(/\s+/, '_').gsub(/([A-Z])/, '_\1').downcase.gsub(/^_/, '')
end

# 421. Count vowels and consonants in a string
def count_vowels_consonants_421(s)
  vowels = s.count('aeiouAEIOU')
  consonants = s.count('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ')
  { vowels: vowels, consonants: consonants }
end

# 422. Return nth Fibonacci number (recursive)
def fibonacci_recursive_422(n)
  return n if n <= 1
  fibonacci_recursive_422(n - 1) + fibonacci_recursive_422(n - 2)
end

# 423. Convert array of strings to uppercase
def upcase_array_423(arr)
  arr.map(&:upcase)
end

# 424. Get all unique pairs from array that sum to target
def pairs_sum_to_target_424(arr, target)
  seen = {}
  pairs = []
  arr.each do |num|
    complement = target - num
    if seen[complement]
      pairs << [complement, num].sort
    end
    seen[num] = true
  end
  pairs.uniq
end

# 425. Check if string is a valid IPv4 address
def valid_ipv4_425?(ip)
  parts = ip.split('.')
  return false unless parts.length == 4
  parts.all? { |p| p =~ /\A\d+\z/ && p.to_i.between?(0, 255) }
end

# 426. Remove last n characters from string
def remove_last_n_chars_426(s, n)
  s[0...-n]
end

# 427. Generate array of random floats between 0 and 1
def random_floats_427(n)
  Array.new(n) { rand }
end

# 428. Check if string contains only digits
def digits_only_428?(s)
  s.match?(/\A\d+\z/)
end

# 429. Convert hash keys to symbols
def keys_to_symbols_429(h)
  h.transform_keys(&:to_sym)
end

# 430. Flatten 2D array
def flatten_2d_array_430(arr)
  arr.flatten(1)
end

# 431. Calculate product of array elements
def product_of_array_431(arr)
  arr.reduce(1, :*)
end

# 432. Check if string is numeric (integer or float)
def numeric_string_432?(s)
  Float(s) != nil rescue false
end

# 433. Generate all permutations of array elements
def permutations_433(arr)
  arr.permutation.to_a
end

# 434. Remove vowels from array of strings
def remove_vowels_from_array_434(arr)
  arr.map { |s| s.gsub(/[aeiouAEIOU]/, '') }
end

# 435. Count number of words ending with 'ing'
def count_ing_words_435(s)
  s.scan(/\b\w+ing\b/).size
end

# 436. Get intersection of two arrays
def intersection_436(a, b)
  a & b
end

# 437. Reverse keys and values in hash
def invert_hash_437(h)
  h.invert
end

# 438. Check if array contains all integers from 1 to n
def contains_1_to_n_438?(arr, n)
  (1..n).all? { |i| arr.include?(i) }
end

# 439. Count number of uppercase letters in string
def count_uppercase_letters_439(s)
  s.count('A-Z')
end

# 440. Generate a hash with keys as numbers 1 to n and values as squares
def squares_hash_440(n)
  (1..n).map { |i| [i, i**2] }.to_h
end

# 441. Find index of minimum element in array
def index_of_min_441(arr)
  arr.index(arr.min)
end

# 442. Check if string is palindrome ignoring case
def palindrome_ignore_case_442?(s)
  s.downcase == s.downcase.reverse
end

# 443. Remove elements less than n from array
def remove_less_than_n_443(arr, n)
  arr.select { |x| x >= n }
end

# 444. Split string into chunks of size n
def split_chunks_444(s, n)
  s.scan(/.{1,#{n}}/)
end

# 445. Generate array of squares of even numbers up to n
def squares_of_evens_445(n)
  (2..n).select(&:even?).map { |x| x**2 }
end

# 446. Check if array contains a subarray
def contains_subarray_446?(arr, sub)
  arr.each_cons(sub.size).any? { |slice| slice == sub }
end

# 447. Generate all subsets of an array (power set)
def power_set_447(arr)
  (0..arr.size).flat_map { |i| arr.combination(i).to_a }
end

# 448. Convert string to array of ASCII values
def string_to_ascii_array_448(s)
  s.bytes
end

# 449. Get key with maximum value from hash
def key_with_max_value_449(h)
  h.max_by { |_, v| v }&.first
end

# 450. Count words with length greater than n in string
def count_words_longer_than_n_450(s, n)
  s.split.count { |w| w.length > n }
end

# 451. Calculate greatest common divisor (GCD) of two numbers
def gcd_451(a, b)
  b == 0 ? a : gcd_451(b, a % b)
end

# 452. Calculate least common multiple (LCM) of two numbers
def lcm_452(a, b)
  (a * b) / gcd_451(a, b)
end

# 453. Convert string to title case
def title_case_453(s)
  s.split.map(&:capitalize).join(' ')
end

# 454. Remove nil and false values from array
def compact_false_nil_454(arr)
  arr.select { |x| x }
end

# 455. Rotate array left by n positions
def rotate_left_455(arr, n)
  n = n % arr.size
  arr.drop(n) + arr.take(n)
end

# 456. Rotate array right by n positions
def rotate_right_456(arr, n)
  n = n % arr.size
  arr.take(-n) + arr.drop(-n)
end

# 457. Generate Fibonacci sequence up to n elements (iterative)
def fibonacci_sequence_457(n)
  return [] if n == 0
  seq = [0, 1]
  seq << seq[-1] + seq[-2] while seq.size < n
  seq.take(n)
end

# 458. Check if string contains only alphabetic characters
def alphabetic_only_458?(s)
  s.match?(/\A[a-zA-Z]+\z/)
end

# 459. Get the mode (most frequent element) in an array
def mode_459(arr)
  freq = arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  freq.max_by { |_, count| count }&.first
end

# 460. Convert decimal number to Roman numeral
def decimal_to_roman_460(num)
  return '' if num <= 0
  roman_map = {
    1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
    100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
    10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
  }
  roman = ''
  roman_map.each do |val, sym|
    count, num = num.divmod(val)
    roman << sym * count
  end
  roman
end

# 461. Check if string is valid JSON
require 'json'
def valid_json_461?(s)
  JSON.parse(s)
  true
rescue JSON::ParserError
  false
end

# 462. Count number of lines in a string
def count_lines_462(s)
  s.lines.count
end

# 463. Extract domain from URL string
def extract_domain_463(url)
  URI.parse(url).host rescue nil
end

# 464. Get last n elements from array
def last_n_elements_464(arr, n)
  arr.last(n)
end

# 465. Check if string contains any special characters (non-alphanumeric)
def contains_special_chars_465?(s)
  s.match?(/[^a-zA-Z0-9]/)
end

# 466. Calculate sum of digits of a number
def sum_digits_466(n)
  n.to_s.chars.map(&:to_i).sum
end

# 467. Check if number is Armstrong number
def armstrong_number_467?(num)
  digits = num.to_s.chars.map(&:to_i)
  sum = digits.map { |d| d ** digits.size }.sum
  sum == num
end

# 468. Remove duplicates from array preserving order
def unique_preserve_order_468(arr)
  seen = {}
  arr.select { |e| !seen[e] && seen[e] = true }
end

# 469. Find longest word in a string
def longest_word_469(s)
  s.split.max_by(&:length)
end

# 470. Generate an array of random integers between min and max
def random_int_array_470(size, min, max)
  Array.new(size) { rand(min..max) }
end

# 471. Count occurrences of a character in a string (case insensitive)
def count_char_insensitive_471(s, char)
  s.downcase.count(char.downcase)
end

# 472. Get the nth character from string (zero-based)
def nth_char_472(s, n)
  s[n]
end

# 473. Remove all punctuation from string
def remove_punctuation_473(s)
  s.gsub(/[[:punct:]]/, '')
end

# 474. Find all substrings of length n in string
def substrings_of_length_n_474(s, n)
  return [] if n > s.length
  (0..s.length - n).map { |i| s[i, n] }
end

# 475. Convert array of strings to comma-separated string
def array_to_csv_475(arr)
  arr.join(',')
end

# 476. Check if two strings differ by only one character
def one_char_diff_476?(s1, s2)
  return false unless s1.length == s2.length
  diff_count = s1.chars.zip(s2.chars).count { |a, b| a != b }
  diff_count == 1
end

# 477. Reverse elements in array between two indices inclusive
def reverse_subarray_477(arr, start_idx, end_idx)
  arr[start_idx..end_idx] = arr[start_idx..end_idx].reverse
  arr
end

# 478. Generate random hex color code
def random_hex_color_478
  "#" + "%06x" % (rand * 0xffffff)
end

# 479. Replace multiple spaces with a single space in string
def normalize_spaces_479(s)
  s.gsub(/\s+/, ' ').strip
end

# 480. Count number of sentences in a string
def count_sentences_480(s)
  s.scan(/[^\.!?]+[\.!?]/).size
end

# 481. Calculate power of a number using recursion
def power_recursive_481(base, exp)
  return 1 if exp == 0
  base * power_recursive_481(base, exp - 1)
end

# 482. Check if string is all lowercase
def all_lowercase_482?(s)
  s == s.downcase
end

# 483. Get difference between two arrays (elements in first not in second)
def array_difference_483(a, b)
  a - b
end

# 484. Count words starting with uppercase letter in string
def count_words_start_upper_484(s)
  s.scan(/\b[A-Z][a-z]*\b/).size
end

# 485. Return factorial of n (iterative)
def factorial_485(n)
  (1..n).reduce(1, :*)
end

# 486. Check if array is sorted ascending
def sorted_ascending_486?(arr)
  arr.each_cons(2).all? { |a, b| a <= b }
end

# 487. Convert string to array of words excluding stop words
def words_excluding_stop_487(s, stop_words = %w[a an the and or but])
  s.downcase.split.reject { |w| stop_words.include?(w) }
end

# 488. Check if string starts with a number
def starts_with_number_488?(s)
  s.match?(/\A\d/)
end

# 489. Remove duplicates from array of strings ignoring case
def unique_ignore_case_489(arr)
  seen = {}
  arr.select { |e| !seen[e.downcase] && seen[e.downcase] = true }
end

# 490. Find smallest number in array greater than n
def smallest_greater_than_n_490(arr, n)
  arr.select { |x| x > n }.min
end

# 491. Generate an array with n random boolean values
def random_booleans_491(n)
  Array.new(n) { [true, false].sample }
end

# 492. Check if two arrays are equal regardless of order
def arrays_equal_unordered_492?(a, b)
  a.sort == b.sort
end

# 493. Convert integer to array of binary digits
def int_to_binary_array_493(n)
  n.to_s(2).chars.map(&:to_i)
end

# 494. Remove last character from string if it matches given char
def remove_last_char_if_494(s, c)
  s.end_with?(c) ? s[0...-1] : s
end

# 495. Replace multiple consecutive identical characters with single one
def remove_consecutive_duplicates_495(s)
  s.gsub(/(.)\1+/, '\1')
end

# 496. Calculate average of array elements
def average_496(arr)
  return nil if arr.empty?
  arr.sum.to_f / arr.size
end

# 497. Check if string contains balanced parentheses
def balanced_parentheses_497?(s)
  count = 0
  s.chars.each do |c|
    count += 1 if c == '('
    count -= 1 if c == ')'
    return false if count < 0
  end
  count == 0
end

# 498. Convert array of integers to array of their squares
def squares_array_498(arr)
  arr.map { |x| x**2 }
end

# 499. Capitalize first letter of each sentence in string
def capitalize_sentences_499(s)
  s.gsub(/(?:^|[\.!?]\s+)([a-z])/) { |match| match.upcase }
end

def generate_maze_500(w, h)
  # Ensure dimensions are odd (better for maze generation)
  w += 1 if w.even?
  h += 1 if h.even?

  # Initialize grid full of walls (1)
  maze = Array.new(h) { Array.new(w, 1) }

  # Directions for carving paths (dx, dy)
  directions = [[0, -2], [2, 0], [0, 2], [-2, 0]]

  # Recursive backtracking function
  define_singleton_method(:carve_passages_from) do |x, y|
    maze[y][x] = 0

    directions.shuffle.each do |dx, dy|
      nx, ny = x + dx, y + dy
      if ny.between?(1, h - 2) && nx.between?(1, w - 2) && maze[ny][nx] == 1
        # Remove wall between current cell and next cell
        maze[y + dy / 2][x + dx / 2] = 0
        carve_passages_from(nx, ny)
      end
    end
  end

  # Start carving from (1,1)
  carve_passages_from(1, 1)

  maze
end

# 501. Check if array elements are all integers
def all_integers_501(arr)
  arr.all? { |e| e.is_a?(Integer) }
end

# 502. Check if string is palindrome ignoring case and spaces
def palindrome_ignore_spaces_502(str)
  normalized = str.downcase.gsub(/\s+/, '')
  normalized == normalized.reverse
end

# 503. Return unique elements in array preserving order
def unique_ordered_503(arr)
  seen = {}
  arr.select { |x| seen[x] ? false : seen[x] = true }
end

# 504. Convert camelCase to snake_case string
def camel_to_snake_504(str)
  str.gsub(/([A-Z])/, '_\1').downcase.sub(/^_/, '')
end

# 505. Capitalize every word in a sentence
def capitalize_words_505(str)
  str.split.map(&:capitalize).join(' ')
end

# 506. Calculate factorial of a number recursively
def factorial_506(n)
  return 1 if n <= 1
  n * factorial_506(n - 1)
end

# 507. Flatten nested arrays of any depth
def deep_flatten_507(arr)
  arr.flat_map { |e| e.is_a?(Array) ? deep_flatten_507(e) : e }
end

# 508. Check if array is strictly increasing
def strictly_increasing_508(arr)
  arr.each_cons(2).all? { |a, b| b > a }
end

# 509. Generate Fibonacci sequence of length n
def fibonacci_509(n)
  fibs = [0, 1]
  (n - 2).times { fibs << fibs[-1] + fibs[-2] }
  fibs.take(n)
end

# 510. Convert array of numbers to hex string array
def to_hex_array_510(arr)
  arr.map { |n| n.to_s(16) }
end

# 511. Remove duplicates from array of hashes by key
def uniq_by_key_511(arr, key)
  seen = {}
  arr.select { |h| seen[h[key]] ? false : seen[h[key]] = true }
end

# 512. Check if string contains only letters
def alpha_only_512(str)
  !!(str =~ /\A[a-zA-Z]+\z/)
end

# 513. Replace multiple spaces with single space
def single_space_513(str)
  str.gsub(/\s+/, ' ')
end

# 514. Reverse words in a sentence
def reverse_words_514(str)
  str.split.reverse.join(' ')
end

# 515. Calculate GCD of two numbers using Euclidean algorithm
def gcd_515(a, b)
  b == 0 ? a : gcd_515(b, a % b)
end

# 516. Convert string to title case
def title_case_516(str)
  str.split.map(&:capitalize).join(' ')
end

# 517. Remove nil values from array
def compact_517(arr)
  arr.compact
end

# 518. Check if array contains a subarray
def contains_subarray_518(arr, subarr)
  arr.each_cons(subarr.size).any? { |slice| slice == subarr }
end

# 519. Sum only even numbers in array
def sum_even_519(arr)
  arr.select(&:even?).sum
end

# 520. Count vowels in a string
def count_vowels_520(str)
  str.downcase.count('aeiou')
end

# 521. Find second largest element in array
def second_largest_521(arr)
  arr.uniq.sort[-2]
end

# 522. Convert number to words (English) up to 999
def number_to_words_522(num)
  ones = %w[zero one two three four five six seven eight nine]
  teens = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  tens = %w[zero ten twenty thirty forty fifty sixty seventy eighty ninety]

  return ones[num] if num < 10
  return teens[num - 10] if num < 20

  if num < 100
    t = tens[num / 10]
    o = num % 10
    return o == 0 ? t : "#{t}-#{ones[o]}"
  end

  if num < 1000
    h = ones[num / 100] + ' hundred'
    r = num % 100
    return r == 0 ? h : "#{h} and #{number_to_words_522(r)}"
  end

  "number too large"
end

# 523. Group array elements by parity
def group_by_parity_523(arr)
  arr.group_by(&:even?)
end

# 524. Find longest string in array
def longest_string_524(arr)
  arr.max_by(&:length)
end

# 525. Generate random hex color code
def random_hex_color_525
  "#" + "%06x" % (rand * 0xffffff)
end

# 526. Check if string is valid IPv4 address
def valid_ipv4_526(str)
  parts = str.split('.')
  return false unless parts.size == 4
  parts.all? { |p| p =~ /\A\d+\z/ && p.to_i.between?(0, 255) }
end

# 527. Merge two hashes with sum of values on key conflict
def merge_sum_hashes_527(h1, h2)
  h1.merge(h2) { |_, v1, v2| v1 + v2 }
end

# 528. Find all indices of element in array
def all_indices_528(arr, elem)
  arr.each_index.select { |i| arr[i] == elem }
end

# 529. Convert snake_case to CamelCase
def snake_to_camel_529(str)
  str.split('_').map(&:capitalize).join
end

# 530. Check if number is prime
def prime_530(n)
  return false if n < 2
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

# 531. Calculate LCM of two numbers
def lcm_531(a, b)
  (a * b) / gcd_515(a, b)
end

# 532. Remove duplicates but keep order in string characters
def unique_chars_532(str)
  seen = {}
  str.chars.select { |c| seen[c] ? false : seen[c] = true }.join
end

# 533. Sort array of strings by length
def sort_by_length_533(arr)
  arr.sort_by(&:length)
end

# 534. Count words in a string
def word_count_534(str)
  str.scan(/\w+/).size
end

# 535. Find intersection of arrays
def array_intersection_535(arr1, arr2)
  arr1 & arr2
end

# 536. Check if array is a palindrome
def array_palindrome_536(arr)
  arr == arr.reverse
end

# 537. Check if two arrays have same elements regardless of order
def arrays_equal_unordered_537(arr1, arr2)
  arr1.sort == arr2.sort
end

# 538. Calculate average of array of numbers
def average_538(arr)
  arr.sum.to_f / arr.size
end

# 539. Extract domain from URL
def domain_from_url_539(url)
  url[/https?:\/\/([^\/]+)/, 1]
end

# 540. Convert string to binary representation
def string_to_binary_540(str)
  str.bytes.map { |b| b.to_s(2).rjust(8, '0') }.join(' ')
end

# 541. Reverse key-values in hash
def reverse_hash_541(h)
  h.map { |k, v| [v, k] }.to_h
end

# 542. Get top N frequent elements in array
def top_n_frequent_542(arr, n)
  freq = arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  freq.sort_by { |_, count| -count }.first(n).map(&:first)
end

# 543. Check if two strings are anagrams
def anagram_543(s1, s2)
  s1.downcase.chars.sort == s2.downcase.chars.sort
end

# 544. Convert array of integers to string with separators
def join_with_separator_544(arr, sep = ',')
  arr.join(sep)
end

# 545. Find min and max in array
def min_max_545(arr)
  [arr.min, arr.max]
end

# 546. Check if string starts with capital letter
def starts_with_capital_546(str)
  str[0] =~ /[A-Z]/
end

# 547. Convert integer to binary string
def int_to_binary_547(n)
  n.to_s(2)
end

# 548. Check if number is perfect square
def perfect_square_548(n)
  (Math.sqrt(n) % 1).zero?
end

# 549. Find all prime numbers up to n
def primes_up_to_549(n)
  sieve = Array.new(n + 1, true)
  sieve[0] = false
  sieve[1] = false
  (2..Math.sqrt(n)).each do |i|
    next unless sieve[i]
    (i*i).step(n, i) { |j| sieve[j] = false }
  end
  sieve.each_index.select { |i| sieve[i] }
end

# 550. Convert hex string to decimal integer
def hex_to_decimal_550(hex)
  hex.to_i(16)
end

# 551. Generate all permutations of an array
def permutations_551(arr)
  arr.permutation.to_a
end

# 552. Check if string contains only digits
def digits_only_552(str)
  !!(str =~ /\A\d+\z/)
end

# 553. Calculate sum of digits in an integer
def sum_of_digits_553(n)
  n.to_s.chars.map(&:to_i).sum
end

# 554. Merge arrays and remove duplicates
def merge_unique_554(arr1, arr2)
  (arr1 + arr2).uniq
end

# 555. Check if two strings differ by exactly one character
def differ_by_one_char_555(s1, s2)
  return false unless s1.length == s2.length
  diffs = s1.chars.zip(s2.chars).count { |a, b| a != b }
  diffs == 1
end

# 556. Repeat string n times
def repeat_string_556(str, n)
  str * n
end

# 557. Get file extension from filename
def file_extension_557(filename)
  File.extname(filename).delete_prefix('.')
end

# 558. Check if array is sorted ascending
def sorted_ascending_558?(arr)
  arr.each_cons(2).all? { |a, b| a <= b }
end

# 559. Generate a random string of given length (alphanumeric)
def random_string_559(length)
  (0...length).map { (('a'..'z').to_a + ('0'..'9').to_a).sample }.join
end

# 560. Replace vowels in string with given character
def replace_vowels_560(str, char = '*')
  str.gsub(/[aeiouAEIOU]/, char)
end

# 561. Calculate power (exponentiation) recursively
def power_561(base, exp)
  return 1 if exp == 0
  base * power_561(base, exp - 1)
end

# 562. Find all substrings of a string
def all_substrings_562(str)
  (0...str.length).flat_map { |start| (start...str.length).map { |finish| str[start..finish] } }
end

# 563. Check if array contains duplicates
def contains_duplicates_563?(arr)
  arr.uniq.length != arr.length
end

# 564. Capitalize first letter of each sentence
def capitalize_sentences_564(str)
  str.gsub(/(?:^|[.!?]\s)([a-z])/) { $1.upcase }
end

# 565. Find max difference between any two elements in array
def max_difference_565(arr)
  arr.max - arr.min
end

# 566. Convert array of integers to binary strings
def int_array_to_binary_566(arr)
  arr.map { |n| n.to_s(2) }
end

# 567. Generate a UUID v4 string
def uuid_v4_567
  require 'securerandom'
  SecureRandom.uuid
end

# 568. Filter out strings shorter than given length
def filter_short_strings_568(arr, min_length)
  arr.select { |s| s.length >= min_length }
end

# 569. Find index of first non-repeating character in string
def first_unique_char_index_569(str)
  counts = Hash.new(0)
  str.each_char { |c| counts[c] += 1 }
  str.chars.index { |c| counts[c] == 1 } || -1
end

# 570. Calculate sum of squares of an array
def sum_of_squares_570(arr)
  arr.map { |n| n**2 }.sum
end

# 571. Check if string is valid email format (basic)
def valid_email_571?(str)
  !!(str =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
end

# 572. Count number of uppercase letters in string
def count_uppercase_572(str)
  str.count("A-Z")
end

# 573. Reverse key and value arrays into a hash
def arrays_to_hash_573(keys, values)
  Hash[keys.zip(values)]
end

# 574. Sort array by frequency of elements descending
def sort_by_frequency_574(arr)
  freq = arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  arr.sort_by { |e| -freq[e] }
end

# 575. Check if string is a valid URL (basic)
def valid_url_575?(str)
  !!(str =~ /\A#{URI::regexp(['http', 'https'])}\z/)
end

# 576. Calculate nth triangular number
def triangular_number_576(n)
  n * (n + 1) / 2
end

# 577. Remove all whitespace from string
def remove_whitespace_577(str)
  str.gsub(/\s+/, '')
end

# 578. Find first duplicate element in array
def first_duplicate_578(arr)
  seen = {}
  arr.find { |e| seen[e] ? true : (seen[e] = true) }
end

# 579. Convert integer to Roman numeral (1-3999)
def int_to_roman_579(num)
  return '' if num <= 0
  values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
  numerals = %w[M CM D CD C XC L XL X IX V IV I]
  result = ''
  values.zip(numerals).each do |value, numeral|
    while num >= value
      result << numeral
      num -= value
    end
  end
  result
end

# 580. Generate an array of primes within a range
def primes_in_range_580(start_num, end_num)
  (start_num..end_num).select { |n| prime_530(n) }
end

# 581. Check if array is strictly decreasing
def strictly_decreasing_581?(arr)
  arr.each_cons(2).all? { |a, b| b < a }
end

# 582. Count occurrences of each word in string
def word_frequency_582(str)
  words = str.downcase.scan(/\w+/)
  freq = Hash.new(0)
  words.each { |w| freq[w] += 1 }
  freq
end

# 583. Get last n elements of an array
def last_n_elements_583(arr, n)
  arr.last(n)
end

# 584. Return array with only prime numbers
def filter_primes_584(arr)
  arr.select { |n| prime_530(n) }
end

# 585. Check if two strings differ only by case
def differ_only_by_case_585?(s1, s2)
  s1.downcase == s2.downcase && s1 != s2
end

# 586. Generate a range of characters from start to end
def char_range_586(start_char, end_char)
  (start_char..end_char).to_a
end

# 587. Convert binary string to integer
def binary_to_int_587(bin_str)
  bin_str.to_i(2)
end

# 588. Reverse array in place
def reverse_in_place_588(arr)
  arr.reverse!
end

# 589. Sum of first n natural numbers
def sum_natural_589(n)
  n * (n + 1) / 2
end

# 590. Remove duplicates from string characters
def unique_chars_590(str)
  str.chars.uniq.join
end

# 591. Return first n Fibonacci numbers
def fibonacci_n_591(n)
  fibonacci_509(n)
end

# 592. Check if number is Armstrong number
def armstrong_592?(num)
  digits = num.to_s.chars.map(&:to_i)
  sum = digits.map { |d| d**digits.size }.sum
  sum == num
end

# 593. Pad string to given length with spaces
def pad_string_593(str, length)
  str.ljust(length)
end

# 594. Find element with max frequency in array
def most_frequent_594(arr)
  freq = arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  freq.max_by { |_, count| count }&.first
end

# 595. Return keys of hash with max value
def keys_with_max_value_595(h)
  max_val = h.values.max
  h.select { |_, v| v == max_val }.keys
end

# 596. Convert string to array of ASCII codes
def string_to_ascii_596(str)
  str.bytes
end

# 597. Get nth element from end of array
def nth_from_end_597(arr, n)
  arr[-n]
end

# 598. Find common elements in multiple arrays
def common_elements_598(*arrays)
  arrays.reduce(:&)
end

# 599. Check if array is a subset of another
def subset_599?(subset, superset)
  (subset - superset).empty?
end

# 600. Convert integer to words (extended)
def number_to_words_600(num)
  # For simplicity reusing 522, could extend to larger numbers
  number_to_words_522(num)
end

# 601. Check if string is palindrome ignoring spaces and punctuation
def palindrome_ignore_nonalpha_601(str)
  cleaned = str.downcase.gsub(/[^a-z0-9]/i, '')
  cleaned == cleaned.reverse
end

# 602. Convert snake_case to camelCase
def snake_to_camel_602(str)
  parts = str.split('_')
  parts[0] + parts[1..].map(&:capitalize).join
end

# 603. Convert camelCase to snake_case
def camel_to_snake_603(str)
  str.gsub(/([A-Z])/, '_\1').downcase.sub(/^_/, '')
end

# 604. Calculate factorial iteratively
def factorial_iter_604(n)
  (1..n).reduce(1, :*)
end

# 605. Find longest word in a string
def longest_word_605(str)
  str.scan(/\w+/).max_by(&:length)
end

# 606. Count vowels in a string
def count_vowels_606(str)
  str.count("aeiouAEIOU")
end

# 607. Generate array with numbers divisible by n in a range
def divisible_by_n_607(range_start, range_end, n)
  (range_start..range_end).select { |x| x % n == 0 }
end

# 608. Merge hashes with sum of values for common keys
def merge_hashes_sum_608(h1, h2)
  h1.merge(h2) { |_, v1, v2| v1 + v2 }
end

# 609. Convert array of integers to hexadecimal strings
def int_array_to_hex_609(arr)
  arr.map { |n| n.to_s(16) }
end

# 610. Check if two arrays are equal ignoring order
def arrays_equal_ignore_order_610?(a1, a2)
  a1.sort == a2.sort
end

# 611. Flatten nested arrays
def flatten_array_611(arr)
  arr.flatten
end

# 612. Generate random integer in range [min, max]
def random_int_612(min, max)
  rand(min..max)
end

# 613. Check if string starts with a vowel
def starts_with_vowel_613?(str)
  !!(str =~ /\A[aeiouAEIOU]/)
end

# 614. Remove nil values from array
def compact_array_614(arr)
  arr.compact
end

# 615. Generate acronym from phrase
def acronym_615(phrase)
  phrase.split.map { |word| word[0].upcase }.join
end

# 616. Check if number is even
def even_616?(n)
  n % 2 == 0
end

# 617. Check if number is odd
def odd_617?(n)
  n % 2 != 0
end

# 618. Replace all digits in string with '#'
def replace_digits_618(str)
  str.gsub(/\d/, '#')
end

# 619. Return first n primes (naive)
def first_n_primes_619(n)
  primes = []
  i = 2
  while primes.size < n
    primes << i if prime_530(i)
    i += 1
  end
  primes
end

# 620. Generate random hex color string
def random_hex_color_620
  "#" + "%06x" % (rand * 0xffffff)
end

# 621. Swap case of string characters
def swap_case_621(str)
  str.swapcase
end

# 622. Count number of words in string
def word_count_622(str)
  str.scan(/\w+/).size
end

# 623. Remove duplicate words from string
def remove_duplicate_words_623(str)
  words = str.split
  unique = []
  words.each { |w| unique << w unless unique.include?(w) }
  unique.join(' ')
end

# 624. Find most common character in string
def most_common_char_624(str)
  freq = Hash.new(0)
  str.each_char { |c| freq[c] += 1 }
  freq.max_by { |_, v| v }&.first
end

# 625. Generate Fibonacci sequence up to max value
def fibonacci_up_to_625(max_val)
  fib = [0, 1]
  while fib[-1] + fib[-2] <= max_val
    fib << fib[-1] + fib[-2]
  end
  fib
end

# 626. Find median of numeric array
def median_626(arr)
  sorted = arr.sort
  len = sorted.length
  if len.even?
    (sorted[len/2 - 1] + sorted[len/2]).to_f / 2
  else
    sorted[len/2]
  end
end

# 627. Convert string to title case
def title_case_627(str)
  str.split.map(&:capitalize).join(' ')
end

# 628. Find all anagrams of a word in array
def find_anagrams_628(word, arr)
  sorted_word = word.downcase.chars.sort.join
  arr.select { |w| w.downcase.chars.sort.join == sorted_word }
end

# 629. Check if string contains only alphabets
def alpha_only_629?(str)
  !!(str =~ /\A[a-zA-Z]+\z/)
end

# 630. Generate a list of squares from 1 to n
def squares_630(n)
  (1..n).map { |i| i * i }
end

# 631. Reverse each word in a string
def reverse_words_631(str)
  str.split.map(&:reverse).join(' ')
end

# 632. Convert integer to binary string with leading zeros up to length
def int_to_bin_padded_632(num, length)
  num.to_s(2).rjust(length, '0')
end

# 633. Find intersection of two arrays
def array_intersection_633(arr1, arr2)
  arr1 & arr2
end

# 634. Calculate Greatest Common Divisor (GCD)
def gcd_634(a, b)
  b == 0 ? a : gcd_634(b, a % b)
end

# 635. Calculate Least Common Multiple (LCM)
def lcm_635(a, b)
  (a * b) / gcd_634(a, b)
end

# 636. Convert array of strings to uppercase
def uppercase_array_636(arr)
  arr.map(&:upcase)
end

# 637. Get unique characters in string preserving order
def unique_chars_ordered_637(str)
  seen = {}
  str.chars.select { |c| !seen[c] && seen[c] = true }.join
end

# 638. Check if string is a valid IPv4 address
def valid_ipv4_638?(str)
  octets = str.split('.')
  return false unless octets.length == 4
  octets.all? { |o| o =~ /^\d+$/ && o.to_i.between?(0, 255) }
end

# 639. Capitalize every other word in string
def capitalize_alternate_words_639(str)
  words = str.split
  words.map.with_index { |w, i| i.even? ? w.capitalize : w.downcase }.join(' ')
end

# 640. Convert seconds to HH:MM:SS format
def seconds_to_hms_640(seconds)
  hrs = seconds / 3600
  mins = (seconds % 3600) / 60
  secs = seconds % 60
  format("%02d:%02d:%02d", hrs, mins, secs)
end

# 641. Count frequency of characters in string ignoring case
def char_frequency_ignore_case_641(str)
  freq = Hash.new(0)
  str.downcase.each_char { |c| freq[c] += 1 }
  freq
end

# 642. Generate range of dates between two dates
def date_range_642(start_date, end_date)
  (start_date..end_date).to_a
end

# 643. Check if array contains a subarray
def contains_subarray_643?(arr, subarr)
  arr.each_cons(subarr.size).include?(subarr)
end

# 644. Find longest common prefix of array of strings
def longest_common_prefix_644(arr)
  return '' if arr.empty?
  prefix = arr[0]
  arr[1..].each do |str|
    while !str.start_with?(prefix)
      prefix = prefix[0...-1]
      return '' if prefix.empty?
    end
  end
  prefix
end

# 645. Find sum of digits in a string
def sum_of_digits_in_string_645(str)
  str.scan(/\d/).map(&:to_i).sum
end

# 646. Convert array of booleans to bitstring
def bool_array_to_bitstring_646(arr)
  arr.map { |b| b ? '1' : '0' }.join
end

# 647. Replace multiple spaces with a single space
def normalize_spaces_647(str)
  str.gsub(/\s+/, ' ').strip
end

# 648. Rotate array left by n positions
def rotate_left_648(arr, n)
  n = n % arr.size
  arr[n..-1] + arr[0...n]
end

# 649. Rotate array right by n positions
def rotate_right_649(arr, n)
  n = n % arr.size
  arr[-n..-1] + arr[0...-n]
end

# 650. Generate a random password with given length
def random_password_650(length)
  chars = [('a'..'z'), ('A'..'Z'), ('0'..'9'), %w[! @ # $ % ^ & * ?]].map(&:to_a).flatten
  (0...length).map { chars.sample }.join
end

# 651. Check if a number is prime (simple)
def prime_651?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

# 652. Generate all substrings of a string
def all_substrings_652(str)
  substrings = []
  (0...str.length).each do |i|
    (i...str.length).each do |j|
      substrings << str[i..j]
    end
  end
  substrings
end

# 653. Remove all vowels from string
def remove_vowels_653(str)
  str.gsub(/[aeiouAEIOU]/, '')
end

# 654. Count occurrences of each word in string
def word_frequency_654(str)
  freq = Hash.new(0)
  str.downcase.scan(/\w+/).each { |w| freq[w] += 1 }
  freq
end

# 655. Convert array of integers to ASCII chars
def int_array_to_chars_655(arr)
  arr.map(&:chr)
end

# 656. Check if array is palindrome
def array_palindrome_656?(arr)
  arr == arr.reverse
end

# 657. Find difference between two arrays (elements in a1 but not in a2)
def array_difference_657(a1, a2)
  a1 - a2
end

# 658. Calculate sum of elements in nested arrays
def nested_sum_658(arr)
  arr.flatten.reduce(0, :+)
end

# 659. Check if string is a valid email
def valid_email_659?(str)
  !!(str =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
end

# 660. Convert string to array of ASCII codes
def string_to_ascii_array_660(str)
  str.chars.map(&:ord)
end

# 661. Repeat a string n times
def repeat_string_661(str, n)
  str * n
end

# 662. Remove duplicates from array while preserving order
def uniq_preserve_order_662(arr)
  seen = {}
  arr.select { |x| !seen[x] && seen[x] = true }
end

# 663. Calculate average of array of numbers
def average_663(arr)
  arr.sum.to_f / arr.size
end

# 664. Find max difference between two elements where larger comes after smaller
def max_diff_664(arr)
  min_val = arr[0]
  max_diff = 0
  arr.each do |val|
    if val < min_val
      min_val = val
    else
      max_diff = [max_diff, val - min_val].max
    end
  end
  max_diff
end

# 665. Get indices of all occurrences of a value in array
def indices_of_665(arr, val)
  arr.each_index.select { |i| arr[i] == val }
end

# 666. Merge two sorted arrays into one sorted array
def merge_sorted_arrays_666(a1, a2)
  (a1 + a2).sort
end

# 667. Check if string is pangram (contains every alphabet letter)
def pangram_667?(str)
  ('a'..'z').all? { |c| str.downcase.include?(c) }
end

# 668. Generate array of first n even numbers
def first_n_evens_668(n)
  (1..Float::INFINITY).lazy.select(&:even?).first(n)
end

# 669. Generate array of first n odd numbers
def first_n_odds_669(n)
  (1..Float::INFINITY).lazy.select(&:odd?).first(n)
end

# 670. Remove first n elements from array
def drop_first_n_670(arr, n)
  arr.drop(n)
end

# 671. Find smallest missing positive integer in array
def smallest_missing_positive_671(arr)
  set = arr.select { |x| x > 0 }.to_set
  i = 1
  i += 1 while set.include?(i)
  i
end

# 672. Zip two arrays into array of pairs
def zip_arrays_672(a1, a2)
  a1.zip(a2)
end

# 673. Count consonants in string
def count_consonants_673(str)
  str.count('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ')
end

# 674. Check if a string is numeric
def numeric_string_674?(str)
  !!(str =~ /\A[+-]?\d+(\.\d+)?\z/)
end

# 675. Convert array of strings to integers
def strings_to_ints_675(arr)
  arr.map(&:to_i)
end

# 676. Find union of two arrays
def array_union_676(a1, a2)
  (a1 + a2).uniq
end

# 677. Reverse bits of an integer (32-bit)
def reverse_bits_677(n)
  n.to_s(2).rjust(32, '0').reverse.to_i(2)
end

# 678. Check if string contains substring ignoring case
def contains_substring_ignore_case_678?(str, substr)
  str.downcase.include?(substr.downcase)
end

# 679. Find second largest element in array
def second_largest_679(arr)
  arr.uniq.sort[-2]
end

# 680. Convert array of integers to binary strings
def int_array_to_bin_680(arr)
  arr.map { |n| n.to_s(2) }
end

# 681. Find length of longest increasing subsequence (naive)
def longest_increasing_subseq_len_681(arr)
  return 0 if arr.empty?
  lengths = Array.new(arr.size, 1)
  (1...arr.size).each do |i|
    (0...i).each do |j|
      if arr[i] > arr[j] && lengths[i] < lengths[j] + 1
        lengths[i] = lengths[j] + 1
      end
    end
  end
  lengths.max
end

# 682. Count occurrences of character in string
def count_char_682(str, char)
  str.count(char)
end

# 683. Remove leading and trailing whitespace
def trim_683(str)
  str.strip
end

# 684. Find all prime factors of a number
def prime_factors_684(n)
  factors = []
  divisor = 2
  while n > 1
    while n % divisor == 0
      factors << divisor
      n /= divisor
    end
    divisor += 1
  end
  factors
end

# 685. Convert binary string to integer
def bin_to_int_685(str)
  str.to_i(2)
end

# 686. Check if array is subset of another
def subset_686?(subset, set)
  subset.all? { |e| set.include?(e) }
end

# 687. Find elements that appear only once in array
def unique_elements_687(arr)
  arr.select { |x| arr.count(x) == 1 }
end

# 688. Count words with length > n in string
def count_long_words_688(str, n)
  str.scan(/\w+/).count { |w| w.length > n }
end

# 689. Repeat each character in string n times
def repeat_chars_689(str, n)
  str.chars.map { |c| c * n }.join
end

# 690. Check if two strings are anagrams ignoring case and spaces
def anagrams_ignore_case_spaces_690?(str1, str2)
  str1.downcase.gsub(/\s+/, '').chars.sort == str2.downcase.gsub(/\s+/, '').chars.sort
end

# 691. Find sum of even numbers in array
def sum_even_691(arr)
  arr.select(&:even?).sum
end

# 692. Find sum of odd numbers in array
def sum_odd_692(arr)
  arr.select(&:odd?).sum
end

# 693. Capitalize first letter of each sentence in string
def capitalize_sentences_693(str)
  str.gsub(/(?:^|[.!?]\s+)([a-z])/) { $1.upcase }
end

# 694. Remove all non-alphanumeric characters from string
def remove_non_alphanumeric_694(str)
  str.gsub(/[^0-9a-z]/i, '')
end

# 695. Find all unique pairs in array that sum to target
def pairs_with_sum_695(arr, target)
  seen = {}
  pairs = []
  arr.each do |num|
    complement = target - num
    if seen[complement]
      pairs << [complement, num].sort
    end
    seen[num] = true
  end
  pairs.uniq
end

# 696. Return the middle element(s) of array
def middle_elements_696(arr)
  len = arr.length
  if len.odd?
    [arr[len/2]]
  else
    arr[len/2 - 1, 2]
  end
end

# 697. Convert string to reversed ASCII values array
def reversed_ascii_array_697(str)
  str.chars.map(&:ord).reverse
end

# 698. Find longest palindrome substring (naive)
def longest_palindrome_substring_698(str)
  max_len = 1
  start_index = 0
  (0...str.length).each do |i|
    (i...str.length).each do |j|
      substr = str[i..j]
      if substr == substr.reverse && substr.length > max_len
        max_len = substr.length
        start_index = i
      end
    end
  end
  str[start_index, max_len]
end

# 699. Check if string contains only digits
def digits_only_699?(str)
  !!(str =~ /\A\d+\z/)
end

# 700. Convert array of strings to floats
def strings_to_floats_700(arr)
  arr.map(&:to_f)
end