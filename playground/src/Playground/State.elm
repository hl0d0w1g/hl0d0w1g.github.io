module Playground.State exposing (init, update, subscriptions)

{-| This module contains the logic controlling the state of the module.


# Definitions

@docs init, update, subscriptions

-}

import Navigation exposing (load)
import Playground.Types exposing (Model, Msg(..), SelectedProject(..))


{-| Defines the input model and command messages for the initialization.
-}
init : ( Model, Cmd Msg )
init =
    ( initModel, initCmdMsg )


{-| Inits the model.
-}
initModel : Model
initModel =
    { selectedProject = NoProject
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
        LaunchProject selectedProject ->
            case selectedProject of
                NoProject ->
                    ( model, Cmd.none )

                RockPaperScissors ->
                    ( { model | selectedProject = RockPaperScissors }, load "./static/rockpaperscissors.html" )


{-| Used for listing for external input.
-}
subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
