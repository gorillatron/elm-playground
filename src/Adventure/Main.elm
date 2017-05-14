module Adventure.Main exposing (..)

import Html exposing (..)
import Adventure.Dungeon exposing (dungeon)


main =
    text <| toString dungeon
