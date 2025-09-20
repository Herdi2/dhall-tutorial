# Setup working environment

# Tutorial files conain all Dhall files to use
wget https://github.com/Herdi2/dhall-tutorial/tree/main/tutorial-files

# All dhall tools, including interpreter and config generators
wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.42.2/dhall-1.42.2-x86_64-linux.tar.bz2
wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.42.2/dhall-json-1.7.12-x86_64-linux.tar.bz2
tar --extract --file dhall-1.42.2-x86_64-linux.tar.bz2
tar --extract --file dhall-json-1.7.12-x86_64-linux.tar.bz2
rm *.bz2
