require "yaml"# require modules here

def load_library(file_path)
  emoticons = YAML.load_file(file_path).map { |emotion, symbol| [emotion, [[:english, symbol[0]]].to_h] }.to_h
  YAML.load_file(file_path).map { |emotion, symbol| emoticons[emotion][:japanese] = symbol[1] }
  emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  if translation = load_library(file_path).find {|key, value| value[:japanese] == emoticon }
    final_message = translation[1][:english]
  else
    final_message = "Sorry, that emoticon was not found"
  end
  final_message
end

def get_english_meaning
  load_library(file_path)
  if translation = load_library(file_path).find {|key, value| value[:japanese] == emoticon }
    final_message = translation[1][:english]
  else
    final_message = "Sorry, that emoticon was not found"
  end
  final_message
  # code goes here
end
