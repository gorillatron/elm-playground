module Adventure.Actions exposing (..)

import Maybe exposing (Maybe(..))
import List exposing (filter, map, concat)
import Adventure.Room exposing (..)
import Adventure.Items exposing (..)


listen : Room -> List String
listen room =
    let
        hearableTraits =
            getTraitsOfKind room.items Hearable
    in
        map getText hearableTraits
