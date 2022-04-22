
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str = "Howdy partner, sit down! How's it going?"


def substrings(word, dictionary)
    word.downcase!
    result_hash = Hash.new
    word_arr = word.split
    
    dictionary.each do |element| 
      found = word_arr.count {|x| x.include?(element) == true}
      if(found > 0)
        result_hash[element] = found
      end
    end
  
    puts result_hash
    
  end

substrings(str, dictionary)