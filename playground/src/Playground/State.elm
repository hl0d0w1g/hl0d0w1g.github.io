module Playground.State exposing (init, update, subscriptions)

{-| This module contains the logic controlling the state of the module.


# Definitions

@docs init, update, subscriptions

-}

import Playground.Types exposing (Model, Msg(..))


{-| Defines the input model and command messages for the initialization.
-}
init : ( Model, Cmd Msg )
init =
    ( initModel, initCmdMsg )


{-| Inits the model.
-}
initModel : Model
initModel =
    { example = ""
    }


{-| Inits the command messages.
-}
initCmdMsg : Cmd Msg
initCmdMsg =
    Cmd.none


{-| Updates the model when actions are triggered
-}
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Message ->
            ( model, Cmd.none )


{-| Used for listing for external input.
-}
subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
