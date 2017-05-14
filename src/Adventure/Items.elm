module Adventure.Items exposing (..)

import List exposing (filter, map, concat)


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


getText : Trait -> String
getText trait =
    trait.text


isTraitKind : TraitKind -> Trait -> Bool
isTraitKind traitkind trait =
    trait.kind == traitkind


getTraitsOfKind : List Item -> TraitKind -> List Trait
getTraitsOfKind items traitkind =
    let
        allTraits =
            concat <| map (\item -> item.traits) items
    in
        filter (isTraitKind traitkind) allTraits
