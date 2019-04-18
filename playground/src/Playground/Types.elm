module Playground.Types exposing (Model, Msg(..))

{-| This module contains the types used all over the page.


# Basic Types

@docs Model, Msg

-}


{-| Defines the messages used.
-}
type Msg
    = Message


{-| Holds the Model of the page.
-}
type alias Model =
    { example : String
    }
