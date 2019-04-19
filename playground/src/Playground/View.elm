module Playground.View exposing (view)

{-| This module contains the main view component of the page.


# Definition

@docs view

-}

import Html exposing (Html, div, h5, hr, img, p, span, text)
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)
import Playground.Types exposing (Model, Msg(..), SelectedProject(..))


{-| Main app view element
-}
view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ header model
        , abstract model
        , projects model
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
            [ div [ class "row" ]
                [ div [ class "col" ]
                    [ span [ class "abstract" ] [ text "" ]
                    ]
                ]
            , div [ class "row" ]
                [ div [ class "col" ]
                    [ span [ class "abstract" ] [ text "More projects and games coming soon!" ]
                    ]
                ]
            ]
        ]


{-| Playground projects
-}
projects : Model -> Html Msg
projects model =
    div [ class "row p-5" ]
        [ div [ class "col-4" ]
            [ cardRockPaperScissors model
            ]
        , div [ class "col-4" ]
            []
        , div [ class "col-4" ]
            []
        ]


{-| Rock Paper Scissors card game
-}
cardRockPaperScissors : Model -> Html Msg
cardRockPaperScissors model =
    div
        [ class "card bg-dark text-white"
        , onClick (LaunchProject RockPaperScissors)
        ]
        [ img [ class "card-img", src "../images/rock_paper_scissors.png" ] []
        , div [ class "card-img-overlay" ]
            [ h5 [ class "card-title" ] [ text "Rock Paper Scissors" ]
            , p [ class "card-text" ] [ text "The simple game of rock, paper and scissors programmed in ELM" ]
            , p [ class "card-text" ] [ text "Play!" ]
            ]
        ]
