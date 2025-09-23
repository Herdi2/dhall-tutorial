let map = https://raw.githubusercontent.com/dhall-lang/dhall-lang/v23.1.0/Prelude/List/map.dhall

let concat = https://raw.githubusercontent.com/dhall-lang/dhall-lang/v23.1.0/Prelude/Text/concat.dhall

let main = ./users.dhall

let types = ./types.dhall

-- Take a list of users and return it in CSV format
let toCSV: List types.User -> Text = 
  -- TODO: Define the column names here
  let columnNames: Text = "name,role,email"
  -- TODO: Define how user attributes should be printed.
  -- Remember to call `showConstructor` on the roles for them
  -- to become `Text`.
  let formatRow: types.User -> Text =
    \(user: types.User) -> "${user.name},${showConstructor user.role},${user.email}\n"
  in
  \(users: List types.User) ->
    columnNames ++ "\n" ++
    concat (map types.User Text formatRow users)

in toCSV main
