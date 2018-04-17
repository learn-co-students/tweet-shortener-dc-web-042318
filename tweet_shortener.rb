# Write your code here.
str = ["OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"]
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => '2', 
  "two" => '2',
  "too" => '2', 
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"
  }
  dictionary
end
def word_substituter(string)
  string = string.split
  string.each do |word|
    dictionary.each do |k,v|
      if(word.upcase === k.upcase)
        word.replace(v)
      end 
    end
  end 
  string.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.map! do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
  end
end
def selective_tweet_shortener(string)
  if string.length <=140
    return string
  end
  string = string.split
  string.each do |word|
    dictionary.each do |k,v|
      if(word === k)
        word = word.replace(v)
      end 
    end
  end 
  string.join(" ")
end
def shortened_tweet_truncator(str)
  if(str.length < 140)
    return str
  end
  str = word_substituter(str)
  puts ("NEW STR length is #{str} " )
  puts ("NEW STR length is #{str.length} " )
  if(str.length >=140  )
  str = "#{str[0..136]}..."
else
  str
end
  str
end


 
