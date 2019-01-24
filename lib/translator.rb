# require modules here
require 'pry'
require 'yaml'

def load_library(directory)
  # code goes here
  file_name = YAML.load_file(directory)
  data = {"get_meaning" => {}, "get_emoticon" => {}}
  file_name.each do |definition, emo|
    data["get_meaning"][emo[1]] = definition
    data["get_emoticon"][emo[0]] = emo[1]
  end
  return data
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  # code goes here
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
