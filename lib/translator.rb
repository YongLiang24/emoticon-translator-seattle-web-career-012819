# require modules here

def load_library(directory)
  # code goes here
  file_name = YAML.load_file(directory)
  data = {"get_meaning" => {}, "get_emoticon" => {}}
  file_name.each do |def, emo|
    data["get_meaning"][emo[1]] = def
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
