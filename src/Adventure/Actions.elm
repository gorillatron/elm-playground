module Adventure.Actions exposing (..)

import List exposing (filter, map, concat)
import Adventure.Room exposing (..)
import Adventure.Items exposing (..)


listen : Room -> List String
listen room =
    let
        allTraits =
            concat <| map (\item -> item.traits) room.items

        hearableTraits =
            filter isHearable allTraits
    in
        map getText hearableTraits
