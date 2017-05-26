module App exposing (..)

import Array
import Html exposing (..)
import Random
import Maybe
import Time
import Html.Attributes exposing (..)
import Chord exposing (Chord(..), toString)

type alias Model =
  { selected : Int }


random : Cmd Msg
random = Random.generate RandChord (Random.int 0 (Array.length allChords))


init : String -> ( Model, Cmd Msg )
init _ =
  ( { selected = 0 }
  , random
  )


type Msg
  = RandChord Int
  | TriggerNewChord Time.Time


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    RandChord index ->
      ( { model | selected = index }, Cmd.none )

    TriggerNewChord _ ->
      (model, random)


view : Model -> Html Msg
view model =
  div [ class "chord-container" ]
    [ img [ src ("src/assests/chords/" ++ Chord.toString (Maybe.withDefault A (Array.get model.selected allChords)) ++ ".png") ] []
    ]


subscriptions : Model -> Sub Msg
subscriptions model =
  Time.every 5000 TriggerNewChord


allChords : Array.Array Chord
allChords =
  Array.fromList
  [ A
  , A7
  , Ab
  , Am
  , B
  , B7
  , Bb
  , Bb7
  , Bbm
  , Bm
  , CSharpm
  , C
  , C7
  , Cm
  , D
  , D7
  , Db
  , Dm
  , E_flat
  , E
  , E7
  , Eb7
  , Em
  , FSharp
  , FSharp7
  , FSharpm
  , F
  , F7
  , Fm
  , GSharpm
  , G
  , G7
  , Gm
  ]
