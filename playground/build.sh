#!/bin/bash
# Compile Elm files
elm-make ./src/Playground/Playground.elm --output=./static/playground.js --warn
elm-make ./src/RockPaperScissors/RockPaperScissors.elm --output=./static/rockpaperscissors.js --warn