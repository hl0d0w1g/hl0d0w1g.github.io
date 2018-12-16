module Games.State exposing (init, update, subscriptions)

{-| This module contains the logic controlling the state of the module


# Definitions

@docs init, update, subscriptions

-}

import Games.Types exposing (Model, Msg(..))


{-| Defines the input model and Command for the initialization.
-}
init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )


initialModel : Model
initialModel =
    { example = ""
    }


{-| Updates the model when actions are triggered
-}
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Message ->
            ( model
            , Cmd.none
            )


{-| Used for listing for external input. Main entry point makes it
necessary to define
-}
subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
