module Playground.Types exposing
    ( Model
    , Msg(..)
    , SelectedProject(..)
    )

{-| This module contains the types used all over the page.


# Basic Types

@docs Model
@docs Msg


# Secondary Types

@docs SelectedProject

-}


{-| Defines the messages used.
-}
type Msg
    = LaunchProject SelectedProject


{-| Holds the Model of the page.
-}
type alias Model =
    { selectedProject : SelectedProject
    }


{-| Defines the playground project that has been selected.
-}
type SelectedProject
    = NoProject
    | RockPaperScissors
