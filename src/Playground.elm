module Playground exposing (..)

import Html exposing (..)


type alias Human =
    { power : Int }


type alias SuperPowered a =
    { a | superpower : Int }


type alias SuperHuman =
    SuperPowered Human


superpower : Human -> Int -> SuperHuman
superpower human superpower =
    { power = human.power
    , superpower = superpower
    }


jorn : Human
jorn =
    { power = 10 }


superjorn : SuperHuman
superjorn =
    superpower jorn 20


classofbeing : Human -> String
classofbeing human =
    case human of
        SuperPowered human ->
            human.name ++ " is superpowered"

        Human ->
            human.name ++ " is a normal human being"

        _ ->
            human.name ++ " is unclassified"


main =
    div []
        [ text (toString jorn)
        , text (toString superjorn)
        ]
