module Playgroun exposing (..)

import Html exposing (..)


type alias Human =
    { name : String
    , power : Int
    }


superpower : Human -> Int -> Human
superpower human extrapower =
    { human
        | power = human.power + extrapower
    }


ole : Human
ole =
    { name = "Ole"
    , power = 10
    }


superole =
    superpower ole 10


main =
    text <| superole.name ++ " power: " ++ (toString superole.power)
