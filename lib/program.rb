require "open-uri"
require "json"
require_relative "text_analyzer"
url = "https://raw.githubusercontent.com/formcept/whiteboard/master/nbviewer/notebooks/data/harrypotter/Book%201%20-%20The%20Philosopher's%20Stone.txt"
text = URI.open(url).read
puts JSON.pretty_generate(analyze(text))
