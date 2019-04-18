module Playground exposing (main)

{-| Main of the app


# Definition

@docs main

-}

import Html exposing (program)
import Playground.State exposing (init, subscriptions, update)
import Playground.Types exposing (Model, Msg)
import Playground.View exposing (view)



-- Entry point


{-| Used as the entry point
-}
main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
