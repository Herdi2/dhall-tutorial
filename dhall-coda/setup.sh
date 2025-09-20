# All dhall tools needed
# Interpreter
wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.42.2/dhall-1.42.2-x86_64-linux.tar.bz2
# dhall-to-json, dhall-to-yaml, json-to-dhall
wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.42.2/dhall-json-1.7.12-x86_64-linux.tar.bz2
tar --extract --file dhall-1.42.2-x86_64-linux.tar.bz2
tar --extract --file dhall-json-1.7.12-x86_64-linux.tar.bz2
rm *.bz2
