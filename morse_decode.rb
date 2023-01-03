@morse = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode(message)
  # split the message into an array or words
  words = message.split('   ')
  decoded_message = ''

  words.each do |word|
    # split each word into an array or letters
    letters = word.split(' ')
    letters.each do |letter|
      # Take each letter and check it in the morse dictionary
      # and add it to the decoded message
      decoded_message += @morse[letter]
    end
    decoded_message += ' '
  end
  print decoded_message
end

decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
