class RegWord < ActiveRecord::Base
public
def search(query)
	#where("Translation LIKE?", "%#{query}%")
	@reg=RegWord.all
	@que=query.split(" ")
	$arr=Array.new
	$i=0
	$word_syn=[]
	@que.each do |q|
		RegWord.word_search(q)
	end
return($word_syn)
end


def self.word_search(word)
	 if RegWord.exists?(['words Like ?', "%#{word}%"])
		puts "its working"
	 else
		puts "its not"
		$arr.push(word)
                $word_syn[$i]=RegWord.synonym(word)
		puts "synonyms-:#{$word_syn[$i]}[#{$i}]"
		$i=$i+1
	end
	puts "array is #{$arr}"
	@str=$arr.join()
	puts "string is #{@str}"
return ($word_syn)

end

def self.synonym(word)

	@syn=Dinosaurus.synonyms_of(word)
	@syn.push(word)
	return @syn
end

end
