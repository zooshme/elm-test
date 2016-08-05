import Html exposing (..)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (..)

main = App.beginnerProgram { model = model, view = view, update = update }

type alias Model = { title : String, subtitle: String }

model : Model
model = Model "" ""

type Msg = Title String | Subtitle String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Title title -> { model | title = title }
    Subtitle subtitle -> { model | subtitle = subtitle }
view :  Model -> Html Msg
view model =
  div []
    [ input [ type' "text", placeholder "Title", onInput Title ] []
    , textarea [ placeholder "Password", onInput Subtitle ] []
    , div [] [ text (model.title ++ " " ++ model.subtitle)  ]
    ]