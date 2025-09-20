let types = ./types.dhall

let makeUser : Text -> types.Role -> types.User =
      \(name : Text) ->
      \(role : types.Role) ->
        { name = name
        , role = role
        , email = "${name}@mail.com"
        }

let users: List types.User =
    [ makeUser "Larissa" types.Role.Teacher
    , makeUser "Eric" types.Role.TA
    , makeUser "Sofia" types.Role.TA
    , makeUser "David" types.Role.Student
    , makeUser "Herdi" types.Role.Student
    ]

in {users}
