# require modules here

def load_library(directory)
  # code goes here
  file_name = YAML.load_file(directory)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  file_name.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  return result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
