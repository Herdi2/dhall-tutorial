let Role = < Teacher | TA | Student >

let User = 
  { name: Text
  , role: Role
  , email: Text
  }


let makeUser : Text -> Role -> User =
      \(name : Text) ->
      \(role : Role) ->
        { name = name
        , role = role
        , email = "${name}@mail.com"
        }

let users: List User =
    [ makeUser "Larissa" Role.Teacher
    , makeUser "Eric" Role.TA
    , makeUser "Sofia" Role.TA
    , makeUser "David" Role.Student
    , makeUser "Herdi" Role.Student
    ]

in users
