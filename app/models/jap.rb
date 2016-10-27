class Jap < ActiveRecord::Base


def self.query_find(find_word)
	@s=[]
	@i=0
	@j=0 
	find_word.each do |word|
		puts "#{word}"
		@s[@i]=word.join("%' OR Translation LIKE '%")
		@i=@i+1
	end

	if @i==1
		@s=@s.join()
	else
		puts "aah chal payi oye"
		@s=@s.join(" %' AND Translation LIKE'% ")
		puts "#{@s}"
	end

	where("Translation LIKE '% "+" #{@s} "+" %'")  #This will search in translation 
#@query[@n]=query.split(" ")
#puts "#@query"
#for @i in 0..n do 
#if @query[i]=="what" && @query[i]="when" && @query[i]=="where" @query[i]=="how"


end
end
