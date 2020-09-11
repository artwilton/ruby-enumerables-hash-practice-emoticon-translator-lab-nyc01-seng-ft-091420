require "yaml"# require modules here

def load_library(file_path)
  emoticons = YAML.load_file(file_path).map { |emotion, symbol| [emotion, [[:english, symbol[0]]].to_h] }.to_h
  YAML.load_file(file_path).map { |emotion, symbol| emoticons[emotion][:japanese] = symbol[1] }
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
