module Chord exposing (..)

type Chord
  = A
  | A7
  | Ab
  | Am
  | B
  | B7
  | Bb
  | Bb7
  | Bbm
  | Bm
  | CSharpm
  | C
  | C7
  | Cm
  | D
  | D7
  | Db
  | Dm
  | E_flat
  | E
  | E7
  | Eb7
  | Em
  | FSharp
  | FSharp7
  | FSharpm
  | F
  | F7
  | Fm
  | GSharpm
  | G
  | G7
  | Gm


toString : Chord -> String
toString chord =
  case chord of
    A -> "A"
    A7 -> "A7"
    Ab -> "Ab"
    Am -> "Am"
    B -> "B"
    B7 -> "B7"
    Bb -> "Bb"
    Bb7 -> "Bb7"
    Bbm -> "Bbm"
    Bm -> "Bm"
    CSharpm -> "C#m"
    C -> "C"
    C7 -> "C7"
    Cm -> "Cm"
    D -> "D"
    D7 -> "D7"
    Db -> "Db"
    Dm -> "Dm"
    E_flat -> "E flat"
    E -> "E"
    E7 -> "E7"
    Eb7 -> "Eb7"
    Em -> "Em"
    FSharp -> "F#"
    FSharp7 -> "F#7"
    FSharpm -> "F#m"
    F -> "F"
    F7 -> "F7"
    Fm -> "Fm"
    GSharpm -> "G#m"
    G -> "G"
    G7 -> "G7"
    Gm -> "Gm"
