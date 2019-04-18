module Playground.View exposing (view)

{-| This module contains the main view component of the page.


# Definition

@docs view

-}

import Html exposing (Html, div, hr, span, text)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Playground.Types exposing (Model, Msg(..))


{-| Main app view element
-}
view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ header model
        , abstract model
        ]


{-| Page header
-}
header : Model -> Html Msg
header model =
    div [ class "row p-5" ]
        [ div [ class "col text-center" ]
            [ hr [ class "hr-line-1" ] []
            , span [ class "title-1" ] [ text "Playground" ]
            , hr [ class "hr-line-1" ] []
            ]
        ]


{-| Playground abstract
-}
abstract : Model -> Html Msg
abstract model =
    div [ class "row" ]
        [ div [ class "col text-center" ]
            [ span [ class "abstract" ] [ text "Coming soon" ] ]
        ]
