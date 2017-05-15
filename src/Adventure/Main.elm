module Adventure.Main exposing (..)

import Html exposing (..)
import Html.Events exposing (on, keyCode, onInput)
import Json.Decode as Json
import Adventure.Rooms.DankCellar exposing (dankcellar)
import Adventure.Actions exposing (listen)


main =
    Html.beginnerProgram { model = model, view = view, update = update }


model :
    { console : List String
    , consoleCurrentText : String
    }
model =
    { console = [ "wat" ]
    , consoleCurrentText = ""
    }


type Msg
    = KeyDown Int
    | Input String


update msg model =
    case msg of
        Input text ->
            { model | consoleCurrentText = text }

        KeyDown key ->
            if key == 13 then
                let
                    addLine =
                        model.consoleCurrentText
                in
                    { model
                        | console = List.concat model.console [ addLine ]
                        , consoleCurrentText = ""
                    }
            else
                model


consoleLine : String -> Html Msg
consoleLine text =
    li []
        [ Html.text text
        ]


onKeyDown : (Int -> msg) -> Attribute msg
onKeyDown tagger =
    on "keydown" (Json.map tagger keyCode)


view model =
    div []
        [ ul []
            (List.map
                consoleLine
                model.console
            )
        , input [ onKeyDown KeyDown, onInput Input ] []
        ]
