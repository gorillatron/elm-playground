module Adventure.Rooms.DankCellar exposing (..)

import Adventure.Room exposing (..)
import Adventure.Items exposing (Item, Touchable, Hearable)


oddartifact : Touchable (Hearable Item)
oddartifact =
    { name = "Odd Artifact"
    , description = "This odd looking artifact has a slight green shimmer"
    , texture = "The artifact feels like a stone. Cold to the touch."
    , sound = "The artifact is making a low hum. Maybe in C minor, but what do you know, you are not a musician."
    }


dankcellar : Room
dankcellar =
    { name = "dankcellar"
    , description = "this is where the player starts"
    , items =
        [ oddartifact
        ]
    }
