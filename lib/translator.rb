# require modules here

def load_library(directory)
  # code goes here
  file_name = YAML.load_file(directory)
  data = {"get_meaning" => {}, "get_emoticon" => {}}
  file_name.each do |meaning, emoticons|
    data["get_meaning"][emoticons[1]] = meaning
    data["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  return data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
