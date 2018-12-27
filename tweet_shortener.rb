# Write your code here.
def dictionary
    { 
    "hello" =>"hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
end

def word_substituter(str)
 str_arr = str.split(" ").map do |word|
   if dictionary.keys.include?(word.downcase)
     word = dictionary[word.downcase]
   else
     word
   end
 end.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.map do |tweet|
  puts  word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = 
  if .chars.length > 140
    return shortened_tweet[0..136] << "..."
  end
end
  