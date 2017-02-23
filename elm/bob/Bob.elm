module Bob exposing (..)

import Regex exposing (contains, regex)
import String exposing (endsWith, toUpper, trim)


yell : String -> Bool
yell str =
    toUpper str == str && contains (regex "[a-zA-Z]") str


question : String -> Bool
question str =
    endsWith "?" str


nothing : String -> Bool
nothing str =
    trim str == ""


hey : String -> String
hey str =
    if yell str then
        "Whoa, chill out!"
    else if question str then
        "Sure."
    else if nothing str then
        "Fine. Be that way!"
    else
        "Whatever."
