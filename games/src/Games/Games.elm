module Games exposing (main)

{-| Main of the app


# Definition

@docs main

-}

import Games.State exposing (init, subscriptions, update)
import Games.Types exposing (Model, Msg)
import Games.View exposing (view)
import Html exposing (program)



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
