module Games.Types exposing (Model, Msg(..))

{-| This module contains the types used all over the app


# Basic Types

@docs Model, Msg

-}


{-| Defines the messages used
-}
type Msg
    = Message


{-| Holds the Model of the app
-}
type alias Model =
    { example : String
    }
