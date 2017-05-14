module Adventure.Items exposing (..)

import Maybe exposing (..)


type TraitKind
    = Touchable
    | Hearable
    | Smellable


type alias Trait =
    { kind : TraitKind
    , text : String
    }


type alias Item =
    { name : String
    , description : String
    , traits : List Trait
    }


type alias ItemList =
    List Item


isHearable : Trait -> Bool
isHearable trait =
    trait.kind == Hearable


getText : Trait -> String
getText trait =
    trait.text
