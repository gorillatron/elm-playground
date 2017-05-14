module Adventure.Main exposing (..)

import Html exposing (..)
import Adventure.Rooms.DankCellar exposing (dankcellar)
import Adventure.Actions exposing (listen)


main =
    text <| toString (listen dankcellar)
