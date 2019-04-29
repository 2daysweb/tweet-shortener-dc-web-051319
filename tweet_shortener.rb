require 'pry'

#Improvements: (1)Don't hard-code capitalized substitutes...Tried using casecmp and downcase, perhaps incorrectly. Look into this. (2) Is there a way to do without using gsub?

def dictionary  
  
  dictionary =  { 
    "hello" => 'hi',
    "to, two, too" => '2',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for, four" => '4',
    "four" => '4',
    "for" => '4',
    "For" => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => "@",
    "and" => "&"
  }
  
end 
  
  
def word_substituter(str_tweet)

tweet_array = []
tweet_array = str_tweet.split(" ")
tweet_array.each_with_index do |str,ind|
  dictionary.each_key do |word|
    tweet_array[ind].gsub!(word,dictionary[word]) if str.include?(word) && word.length == str.length
    end
  end
 return tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |str_tweet|
    puts word_substituter(str_tweet)
  end
end

def selective_tweet_shortener(str_tweet)
  if str_tweet.length > 140 
    word_substituter(str_tweet)
  else
    return str_tweet
  end
end

def shortened_tweet_truncator(str_tweet)
  if selective_tweet_shortener(str_tweet).length > 140
    str_tweet.truncate(140)
  else
    return str_tweet
  end
end

