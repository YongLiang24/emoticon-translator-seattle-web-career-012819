# require modules here
=begin
def load_library(directory)
  # code goes here
  file_name = YAML.load_file(directory)
  data = {"get_meaning" => {}, "get_emoticon" => {}}
  file_name.each do |definition, emo|
    data["get_meaning"][emo[1]] = definition
    data["get_emoticon"][emo[0]] = emo[1]
  end
   data
end
=end
def load_library(file_path)
  # code goes here	  library = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
