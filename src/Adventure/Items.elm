module Adventure.Items exposing (..)

import Maybe exposing (..)


type alias Item =
    { name : String
    , description : String
    }


type alias Touchable item =
    { item | texture : Just String }


type alias Hearable item =
    { item | sound : Just String }
