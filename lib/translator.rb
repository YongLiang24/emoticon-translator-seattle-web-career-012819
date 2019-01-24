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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
