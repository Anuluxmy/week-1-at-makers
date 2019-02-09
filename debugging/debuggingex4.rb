def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)# we want to include z so a...z doesnt include z. we don't want to repeat the key values that's why we - key
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  puts ciphertext_chars.join #it's missing to print out the ciphertext_chars (puts)
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65] # getting random letters when we 65- char.ord but when we do char.ord - 65 we get the encodeed letters
  end
  puts plaintext_chars.join # we have to ouput the letters missing puts
end
encode("b", "s")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
