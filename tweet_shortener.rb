require "pry"
def dictionary
dctnry = {
    "hello" => "hi",
    "to" => "2", 
    "two" => "2", 
    "too" => "2",
    "for" => "4", 
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@" ,
    "and" => "&",
}
end

def word_substituter(string)
    abbreviations = dictionary
    words = string.split(" ")
    new_words = []
    words.collect do |wrd|
        if abbreviations.has_key?(wrd.downcase)
            new_words << abbreviations[wrd.downcase]
        else
            new_words << wrd
        end
    end
    new_str= new_words.join(" ")
 
    new_str
end

def bulk_tweet_shortener(array)
    new_array = []
    array.each do |string|
        new_array << word_substituter(string)
        puts word_substituter(string)
    end
    new_array
end

def selective_tweet_shortener(string)
    if string.size > 140
       string = word_substituter(string)
    end
    string
end

def shortened_tweet_truncator(string)
    string = selective_tweet_shortener(string)
    if string.size > 140
        string = string[0...140]
    end
    string
end
