global = {
  \time 4/4
  \key f \major
  \tempo 4 = 115
}
rhIntroOne = \relative c'' {
  \oneVoice
  <a c f>4-. q-. <g c g'>4-. q-.
  \tuplet 3/2 4 { <a d f>4 q8 r4 <g c e>8~ } q4 \tuplet 3/2 4 { \stemUp r8 f' e }
  \tuplet 3/2 4 { d8 dis e f fis bes a4 dis,8 e4 f8-. }
  \oneVoice r4 \stemUp gis32 a gis a gis a gis a \tuplet 3/2 4 { r4 \stemNeutral <c,, des c'>8->~ } q4
}
rhIntroTwo = \relative c'' {
  \voiceTwo
  s1 s1
  bes4-- <bes d>-- <bes des f>4-- \tuplet 3/2 4 { <bes des>4-- <a c d>8-. }
  s1
}
rhAOne = \relative c'' {
  a4-. a-. \tuplet 3/2 4 { a4 g8 a4 g8 r4 f8 g4 a8~ } \stemDown a4 r4 \stemNeutral
  bes4-. bes-. \tuplet 3/2 4 { bes4 a8 bes4 a8 r4 g8 a4 bes8~ } \stemDown bes4 r4 \stemNeutral
  a4-. a-. \tuplet 3/2 4 { a4 g8 a4 g8 r4 fis8 g4 a8 \stemDown r4 bes8~ bes4 c8 } \stemNeutral
  \tuplet 3/2 4 { ees8 d ees f ees f } aes4-. \tuplet 3/2 4 { <aes, des f>4-- <g c g'>8-. }
  \tuplet 3/2 4 { r4 c8( } bes4)-. a-. g--
}
rhATwo = \relative c'' {
  <<
    { a4-. a-. \tuplet 3/2 4 { a4 g8 a4 g8 r4 f8 g4 a8~ } \stemDown a4 r4 \stemNeutral }
    { c,4-. c-. \tuplet 3/2 4 { c4 bes8 c4 bes8 r4 a8 bes4 c8~ } \stemDown c4 r4 \stemNeutral }
  >>
  <<
    { bes'4-. bes-. \tuplet 3/2 4 { bes4 a8 bes4 a8 r4 g8 a4 bes8~ } \stemDown bes4 r4 \stemNeutral }
    { d,-. d-. \tuplet 3/2 4 { d4 c8 d4 c8 r4 bes8 c4 d8~ } \stemDown d4 r4 \stemNeutral }
  >>
  <<
    { c'4-. c-. \tuplet 3/2 4 { c4 bes8 c4 bes8 r4 a8 bes4 c8 r4 d8 e4 g8 } f4-. }
    { e,4-. e-. \tuplet 3/2 4 { e4 d8 e4 d8 r4 c8 d4 e8 r4 f8 g4 bes8 } a4-. }
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
    \stemNeutral \tuplet 3/2 4 { r8 d-. d-. f4-. g8-. } \stemUp aes4-. \stemNeutral r4
  }
  \tuplet 3/2 4 { r8 c, c f4 g8 } c4-. <a, c a'>--
  <f a g'>4-. <f a f'>-- <e g e'>-. <e g f'>--
  \repeat unfold 2 {
    \stemNeutral \tuplet 3/2 4 { r8 d'-. d-. f4-. g8-. } \stemUp aes4-. \stemNeutral r4
  }
  \tuplet 3/2 4 {
    <bes,, d f>4 q8 <c e g>4 q8 <f bes d>4 q8 <g c e>4 q8
    <aes des f>4 q8 <bes ees g>4 q8 <c f a>4 q8
  } <e g c>4
}
rhBLow = \relative c' {
  \voiceTwo
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s1*2
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
  s2 \tuplet 3/2 4 { r8 d-. bes-. } s4
}
rh = <<
  \global
  \clef treble
  {
    \rhIntroOne
    \rhAOne
    \rhATwo
    \rhB
  } \\
  {
    \rhIntroTwo
    \rhAHighOne
    \rhAHighTwo
    \rhBLow
  }
>>
