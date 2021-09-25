require_relative 'dictionary'

class BrailleWriter
  include Dictionary

  def translate(letter)
    letter_keys[letter]
  end
end
