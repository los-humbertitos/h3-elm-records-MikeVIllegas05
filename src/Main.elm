module Main exposing (..)

import Html exposing (strong)
import Html.Attributes exposing (list, name)


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16Gb"
    , model = "Razer"
    , brand = "Think"
    , screenSize = "14"
    }


aList : List String -> Html.Html msg
aList listContent =
    Html.ul []
        (List.map anItem listContent)


anItem : String -> Html.Html msg
anItem content =
    Html.li [] [ Html.text content ]


main : Html.Html msg
main =
    Html.div []
        [ Html.h1
            []
            [ Html.text "My Laptop" ]
        , Html.div
            []
            [ aList [ "Ram: " ++ .ram myLaptop, "Modelo: " ++ .model myLaptop, "Brand: " ++ .brand myLaptop, "ScreenSize: " ++ .screenSize myLaptop ] ]
        ]
