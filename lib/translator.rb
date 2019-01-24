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

def get_japanese_emoticon(directory = './lib/emoticons.yml', en_emo)
  # code goes here
  data = load_library(directory)
  if data["get_emoticon"].include?(en_emo)
    data["get_emoticon"][en_emo]
  else
    "Emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
