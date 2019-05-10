def dictionary
  subbed_words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  arrayify = tweet.split(" ")
  arrayify.each_with_index do |word, i|
    dictionary.keys.each do |sub_word|
      if word == sub_word
        arrayify[i] = dictionary[sub_word]
      end
    end
  end
  arrayify.join(" ")
end
