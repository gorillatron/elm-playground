module Adventure.Rooms.DankCellar exposing (..)

import Adventure.Room exposing (..)
import Adventure.Items exposing (..)


oddartifact : Item
oddartifact =
    { name = "Odd Artifact"
    , description = "This odd looking artifact has a slight green shimmer"
    , traits =
        [ { kind = Touchable
          , text = "The artifact feels like a stone. Cold to the touch."
          }
        , { kind = Hearable
          , text = "The artifact is making a low hum. Maybe in C minor, but what do you know, you are not a musician."
          }
        ]
    }


dankcellar : Room
dankcellar =
    { name = "dankcellar"
    , description = "this is where the player starts"
    , items =
        [ oddartifact
        ]
    }
