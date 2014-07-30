\include "paper20.ly"
\paper  {
  linewidth = 455.244096\pt
  
  
}

\header {
}

melody = \notes \relative c' {
  \clef treble
\cadenzaOn
  d4 c b8. a16 \bar"|"
  g4 \bar "||"
\cadenzaOff
}

words = \lyrics {
  Do it hear -- ti -- ly!
}

\score { <<
  \property Staff.TimeSignature \override #'transparent = ##t
  \property Score.automaticMelismata = ##t

  \addlyrics
  \context Staff {
     \melody
  }
  \context Lyrics \words
  >>


  \paper { }
  \midi { \tempo 4 = 120 }
}