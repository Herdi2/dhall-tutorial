let concat = https://raw.githubusercontent.com/dhall-lang/dhall-lang/v23.1.0/Prelude/Text/concat.dhall
let map = https://raw.githubusercontent.com/dhall-lang/dhall-lang/v23.1.0/Prelude/List/map.dhall
let User = { name : Text, age : Natural }

let users = [
    { name = "Alice"}
  , { name = "Bob"}
  ]

let formatUser = \(user : User) -> "${user.name}"

let formattedUsers = map User Text formatUser users

in "name" ++ (concat formattedUsers)

