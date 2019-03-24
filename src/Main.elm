module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, div, h1, img, text, p)
import Html.Attributes exposing (class, src)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "section" ]
        [ img [ src "/logo.svg" ] []
        , div [ class "columns" ]
            [ div [ class "column" ]
                [ p [ class "notification is-primary has-text-centered" ] [ text "First colum" ] ]
            , div [ class "column" ]
                [ p [ class "notification is-info has-text-centered" ] [ text "Second colum" ] ]
            , div [ class "column" ]
                [ p [ class "notification is-warning has-text-centered" ] [ text "Third colum" ] ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
