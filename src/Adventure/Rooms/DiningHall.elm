module Adventure.Rooms.DiningHall exposing (..)

import Adventure.Room exposing (..)


dininghall : Room
dininghall =
    { name = "dininghall"
    , description = "A grand room with a lot of stuff."
    , items =
        [ { name = "Steel Armor"
          , description = "A bit rusty though normal looking armor."
          }
        ]
    }
