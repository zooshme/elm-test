module Greeting exposing (..)

import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (..)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

type alias Model = String

model : Model
model = ""

type Msg = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newValue ->
      newValue

view : Model -> Html Msg
view model =
  div []
    [h1 [] [ text "Hello world" ]
    , input [ type' "text", placeholder "Type something in here", onInput Change ] []
    , div [] [ text model ]
    ]