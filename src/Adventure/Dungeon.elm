module Adventure.Dungeon exposing (..)

import Adventure.Rooms.DankCellar exposing (dankcellar)
import Adventure.Rooms.DiningHall exposing (dininghall)


dungeon =
    { room = dankcellar
    , exits =
        [ { room = dininghall
          , exitdescription = "You see a feeble ladder leading upp towards a dim light."
          }
        ]
    }
