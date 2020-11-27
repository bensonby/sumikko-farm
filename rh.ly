global = {
  \time 4/4
  \key f \major
  \tempo 4 = 115
}
rhIntroOne = \relative c'' {
  \oneVoice
  <a c f>4-. q-. <g c g'>4-. q-.
  \tuplet 3/2 4 { <a d f>4--( q8-.) r4 <g c e>8~-> } q4 \tuplet 3/2 4 { r8 f'\( e }
  \tuplet 3/2 4 { <d bes>8 dis e <f d bes> fis bes\) <a f des bes>4( dis,8) <e des bes>4--( <f d c a>8-.) }
  r4 gis32\(^\trillNotTogether a gis a gis a gis a\) \tuplet 3/2 4 { r4 <des,, c'>8->~ } q4
}
rhAOne = \relative c'' {
  a4-. a-. \tuplet 3/2 4 { a4( g8 a4 g8) r4 f8_( g4 a8~ } \stemDown a4) r4 \stemNeutral
  bes4-. bes-. \tuplet 3/2 4 { bes4_( a8 bes4 a8) r4 g8_( a4 bes8~ } \stemDown bes4) r4 \stemNeutral
  a4-. a-. \tuplet 3/2 4 { a4( g8 a4 g8) r4 fis8( g4 a8) \stemDown r4 bes8~\( bes4 c8 } \stemNeutral
  \tuplet 3/2 4 { ees8 d ees f ees f } aes4-.\) \tuplet 3/2 4 { <aes, des f>4--( <g c e g>8-.) }
  \tuplet 3/2 4 { r4 c8( } bes4)-. a-. g--
}
rhATwo = \relative c'' {
  <<
    { a4-. a-. \tuplet 3/2 4 { a4( g8 a4 g8) r4 f8_( g4 a8~ } \stemDown a4) r4 \stemNeutral }
    { c,4-. c-. \tuplet 3/2 4 { c4 bes8 c4 bes8 r4 a8 bes4 c8~ } \stemDown c4 r4 \stemNeutral }
  >>
  <<
    { bes'4-. bes-. \tuplet 3/2 4 { bes4( a8 bes4 a8) r4 g8_( a4 bes8~ } \stemDown bes4) r4 \stemNeutral }
    { d,-. d-. \tuplet 3/2 4 { d4 c8 d4 c8 r4 bes8 c4 d8~ } \stemDown d4 r4 \stemNeutral }
  >>
  <<
    { c'4-. c-. \tupletUp \tuplet 3/2 4 { c4( bes8 c4 bes8) r4 a8( bes4 c8) r4 d8_( e4 g8 } f4) }
    { e,4-. e-. \tuplet 3/2 4 { e4 d8 e4 d8 r4 c8 d4 e8 r4 f8 g4 bes8 } a4 }
  >> s4 s2
  r4 \acciaccatura d16 <a ees'>4-. \acciaccatura d16 q2->
}
rhAHighOne = \relative c'' {
  s1 s2 \tuplet 3/2 4 { \voiceThree \stemUp f8( a c } f4)
  s1 s2 \tuplet 3/2 4 { \voiceThree \stemUp bes,8( d f } bes4)
  s1 s2 \tuplet 3/2 4 { \voiceThree \stemUp d,,8( fis a } d4)
  s1 s1
}
rhAHighTwo = \relative c'' {
  s1 s2 \tuplet 3/2 4 { \voiceThree \stemUp f8( a c } f4)
  s1 s2 \tuplet 3/2 4 { \voiceThree \stemUp bes,8( d f } bes4)
  s1*2
  \tuplet 3/2 4 { \stemUp f,8( c')-. c-. \oneVoice des,-. c-. c-. ees,( c)-. c-. ees( d des) }
  s1
}
rhB = \relative c'' {
  \repeat unfold 2 {
    \oneVoice \tuplet 3/2 4 { r8 d-.( d-. f4-. g8-. } \stemUp aes4-.) \stemNeutral r4
  }
  \tuplet 3/2 4 { r8 c,-.( c-. f4-. g8-. } c4-.) <a, c a'>--(
  <\tweak font-size #-2 f a g'>4-.) <f a f'>--( <e g e'>-.) <\tweak font-size #-2 e g f'>--
  \repeat unfold 2 {
    \stemNeutral \tuplet 3/2 4 { r8 d'-.( d-. f4-. g8-. } \stemUp aes4-.) \stemNeutral r4
  }
  \tuplet 3/2 4 {
    <bes,, d f>4\( q8 <c e g>4 q8 <f bes d>4 q8 <g c e>4 q8
    <aes des f>4 q8 <bes ees g>4 q8 <c f a>4 q8
  } <e g c>4\)
}
rhBLow = \relative c' {
  \voiceTwo
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s1*2
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s1*2
}
rhC = \relative c' {
  \repeat unfold 2 {
    \tuplet 3/2 4 { <f a>8\( bes c <f, a>8 bes c } <a f'>4 <a c>\)
  }
  \tuplet 3/2 4 { <d, bes'>8\( c' d q c d } <f, bes g'>4 <f bes d>\)
  \tuplet 3/2 4 { <c' e>8 g q <des' f> aes q <d fis> a q } <ees' g>4
  \repeat unfold 2 {
    \tuplet 3/2 4 { <f, a>8\( bes c <f, a>8 bes c } <a f'>4 <a c>\)
  }
  \tuplet 3/2 4 { <d, bes'>8\( c' d <d, bes'> c' d } <g, d' g>4 \tuplet 3/2 4 { <g d'>8 e' f }
  <g, c f g>4~ \tuplet 3/2 4 { q8 e' d } c2\)
}
rhD = \relative c''' {
  \tuplet 6/4 4 { g16^\pp\( c a' g f e d c bes a g f e d~ d4~ } \tuplet 3/2 4 { d8 f d }
  <c, bes' des>1\)
  \voiceOne
  r4 c''\( e c'
  bes2 a\)
  \tuplet 3/2 4 { \stemDown a,8\( f f \oneVoice f d d d bes bes bes g g\) }
  \tuplet 3/2 4 {
    <bes, des gis>4\(-> a'8 q4-> a8 q4-> f8 <bes, des>4-> <a c f>8-.->\)
  }
  r4 \tuplet 3/2 4 { b''8\(-. c-. cis-. d-. dis-. e-. f-. fis-. g-. }
  gis4-.\) <gis,, a gis'>-. q2->--
}
rhDVoiceTwo = \relative c'' {
  \voiceOne
  s1
  r2 r4 \tuplet 3/2 4 { r8 e( d } \voiceTwo <g, c e>1)
  r2 \tuplet 3/2 4 { r4 g'8\( } \afterGrace a4 { bes16 c d e f g } \omit TupletNumber \tuplet 3/2 4 { \stemUp a8\) }
}
rh = <<
  \global
  \clef treble
  {
    \rhIntroOne
    \rhAOne
    \rhATwo
    \rhB
    \rhC
    \rhD
    \bar ":|."
  } \\
  {
    s1*4
    \rhAHighOne
    \rhAHighTwo
    \rhBLow
    s1*8
    \rhDVoiceTwo
  }
>>
