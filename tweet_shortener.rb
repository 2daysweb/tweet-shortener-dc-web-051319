require 'pry'

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

