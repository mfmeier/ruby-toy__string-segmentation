require_relative 'dictionary.rb'
def segment_string(str)
  i = 0                               
  temp = []                           
  words = [] 
  skip = false                         

  while i < str.length              
    sample_from_string = str[i]        
    temp << sample_from_string          
    
    if valid_word?(temp.join) 
      words << temp.join
      temp = []
      
      if skip == true
        temp << words[-1]
        words.pop
        temp << sample_from_string

        if valid_word?(temp.join)
          words << temp
          temp = []
          i == words.length + 1
        end                                   
      
      end                                                      

    else
      if i = temp.length + 1
          temp << words[-1]
          words.pop
          temp << sample_from_string

        if valid_word?(temp.join)
          words << temp
          temp = []
          i == words.length + 1
        end
      end              

    end   
    i += 1                            
  end   
                                
  return words                        
end
print segment_string("hampsteravacadouniversemannorthburritohampster")
