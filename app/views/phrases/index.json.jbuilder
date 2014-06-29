json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :content, :author, :language
  json.url phrase_url(phrase, format: :json)
end
