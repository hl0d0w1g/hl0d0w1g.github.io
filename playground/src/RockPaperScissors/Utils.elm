module RockPaperScissors.Utils exposing
    ( run
    , loadNewUrl
    , generateRandomInt
    , calcGameWinner
    )

{-| This module contains the utils functions of the module.


# Definitions

@docs run
@docs loadNewUrl
@docs generateRandomInt
@docs calcGameWinner

-}

import Navigation
import Random
import RockPaperScissors.Types exposing (Choice(..), Msg(..), Winner(..))
import Task


{-| Runs another messsage on the update fucntion.
-}
run : msg -> Cmd msg
run m =
    Task.perform (always m) (Task.succeed ())


{-| Loads a new url.
-}
loadNewUrl : String -> Cmd Msg
loadNewUrl newUrl =
    Navigation.load newUrl


{-| Generates a random int between 1 and 3.
-}
generateRandomInt : Cmd Msg
generateRandomInt =
    Random.generate ComputerChoice (Random.int 1 3)


{-| Calcs the game winner based on their choices.
-}
calcGameWinner : Choice -> Choice -> Winner
calcGameWinner userChoice computerChoice =
    case userChoice of
        Rock ->
            case computerChoice of
                Rock ->
                    Tie

                Paper ->
                    Computer

                Scissors ->
                    User

                NoChoice ->
                    Tie

        Paper ->
            case computerChoice of
                Rock ->
                    User

                Paper ->
                    Tie

                Scissors ->
                    Computer

                NoChoice ->
                    Tie

        Scissors ->
            case computerChoice of
                Rock ->
                    Computer

                Paper ->
                    User

                Scissors ->
                    Tie

                NoChoice ->
                    Tie

        NoChoice ->
            Tie
