module Adventure.Room exposing (..)

import Adventure.Items exposing (..)


type alias Room =
    { name : String
    , description : String
    , items : List Item
    }
