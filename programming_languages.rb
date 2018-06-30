require "pry"
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_data|
    language_data.each do |language_name, type_hash|
      new_hash[language_name] = type_hash
      if new_hash[language_name][:style] == nil
        new_hash[language_name][:style] = [style]
      else
        new_hash[language_name][:style] << style
      end
    end
  end
  new_hash
end

puts reformat_languages(languages)