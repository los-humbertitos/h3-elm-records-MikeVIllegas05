module Helper exposing (..)


lenguage : List { name : String, releaseYear : Int, currentVersion : String }
lenguage =
    [ { name = "elm"
      , releaseYear = 2016
      , currentVersion = "0.9.1"
      }
    , { name = "Java"
      , releaseYear = 2012
      , currentVersion = "0.10.6"
      }
    ]


lenguageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
lenguageNames inData =
    List.map .name inData


type alias Person =
    { name : String, uType : String }


users : List Person
users =
    [ { name = "Mike"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


onlyStudents : List Person -> List String
onlyStudents students =
    List.map .name students


type alias VideoGame =
    { title : String, releaseYear : Int, avaliable : Bool, download : Int, genres : List String }


videoGames : List VideoGame
videoGames =
    [ { title = "Overwatch"
      , releaseYear = 2016
      , avaliable = True
      , download = 36
      , genres = [ "Shoter", "Action" ]
      }
    , { title = "Terraria"
      , releaseYear = 2015
      , avaliable = True
      , download = 10
      , genres = [ "MMO", "Supervivencia" ]
      }
    ]


getVideogamesGenres : List VideoGame -> List (List String)
getVideogamesGenres list =
    List.map .genres list
