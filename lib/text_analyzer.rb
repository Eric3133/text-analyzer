def analyze(text)
  # TODO: should analyze the text, and return the result hash with all features
  if text.empty?
    return {}
  else
    output = {
      character_count: text.length,
      character_count_excluding_spaces: text.gsub(/\s+/, "").length,
      word_count: text.scan(/\w+/).size,
      line_count: text.scan(/^.*$/).size,
      sentence_count: text.split(".").size,
      paragraph_count: text.split("\n\n").size,
    }
    output[:average_words_per_sentence] = output[:word_count].fdiv(output[:sentence_count]).round(2)
    output[:average_sentences_per_paragraph] = output[:sentence_count].fdiv(output[:paragraph_count]).round(2)
    return output
  end
end
