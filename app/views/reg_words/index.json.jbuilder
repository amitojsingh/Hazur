json.array!(@reg_words) do |reg_word|
  json.extract! reg_word, :id, :words
  json.url reg_word_url(reg_word, format: :json)
end
