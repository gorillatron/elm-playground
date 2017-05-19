module Adventure.Dungeon exposing (..)

import Maybe exposing (Maybe(..))
import Adventure.Room exposing (Room)
import Adventure.Rooms.DankCellar exposing (dankcellar)
import Adventure.Rooms.DiningHall exposing (dininghall)


type alias Dungeon =
    { name : String
    , map : List (List (Maybe Room))
    }


dungeon : Dungeon
dungeon =
    { name = "Your standard dungeon"
    , map =
        [ [ Just dininghall ]
        , [ Just dankcellar ]
        ]
    }
