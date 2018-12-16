module Games.View exposing (view)

{-| This module contains the main view component of the app


# Definition

@docs view

-}

import Games.Types exposing (Model, Msg(..))
import Html exposing (Html, div, text)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


{-| Main app view element
-}
view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ div [ class "row" ]
            [ div [ class "col" ]
                [ text "Coming soon!" ]
            ]
        ]
