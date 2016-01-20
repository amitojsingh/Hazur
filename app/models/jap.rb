class Jap < ActiveRecord::Base


def self.search(query)
where("Translation LIKE?", "%#{query}%")  #This will search in translation 
#@query[@n]=query.split(" ")
#puts "#@query"
#for @i in 0..n do 
#if @query[i]=="what" && @query[i]="when" && @query[i]=="where" @query[i]=="how"


end
end
