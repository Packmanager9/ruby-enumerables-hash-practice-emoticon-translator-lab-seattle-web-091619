require 'yaml'

def load_library(file_path)
  c = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  c.each do |a, b|
    x["get_meaning"][b[1]] = a
    x["get_emoticon"][b[0]] = b[1]
  end
  x
end
def get_japanese_emoticon(a = './lib/emoticons.yml', b)
  c = load_library(a)
  if c["get_emoticon"].include?(b)
    c["get_emoticon"][b]
  else
    "Sorry, that emoticon was not found"
  end
end
def get_english_meaning(b = './lib/emoticons.yml', a)
  c = load_library(b)
  if c["get_meaning"].include?(a)
    c["get_meaning"][a]
  else
    "Sorry, that emoticon was not found"
  end
end
