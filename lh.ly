global = {
  \time 4/4
  \key f \major
  \tempo 4 = 115
}
lhIntroOne = \relative c {
  \oneVoice
  \tuplet 3/2 4 {
    \repeat unfold 2 { f4-. f'8-. }
    \repeat unfold 2 { e,4-. e'8-. }
    d,4-. d8-. d'4-. <c, c'>8->~
  }
  q2
  \tuplet 3/2 4 {
    \repeat unfold 2 { bes4-. bes'8-. }
    c,4-. c'8-. <c, c'>4-- <f, f'>8-.
  }
  r4 \cr \stemDown \tuplet 7/4 { gis''16 a gis a gis a gis } \tuplet 3/2 4 { a4 \cl c,,8~-> } c4
}
lhIntroTwo = \relative c' {
  s1 s2 \tuplet 3/2 4 { \stemUp g8( c \cr \stemDown e } g4) \cl
  s1*2
}
lhAOne = \relative c, {
  \oneVoice
  \repeat unfold 2 { f4-. <a' c>-. c,,-. q-. }
  \repeat unfold 2 { bes4-. <bes'' d>-. f,-. q-. }
  f4-. <a' c>-. c,,-. q-. d-. <a'' d>-. a,,-. <d'' fis>-.
  <aes, ges'>2 r4 \tuplet 3/2 4 { <des, des'>4--( <c c'>8-.) }
  \tuplet 3/2 4 { r4 c'8( } bes4)-. a-. g--
}
lhATwo = \relative c, {
  \oneVoice
  f4-. <a' c>-. c,,-. q-. f4-. c''-. c,,-. q-.
  bes4-. <bes'' d>-. f,-. q-. bes,4-. d''-. f,,-. q-.
  c4-. <c'' e>-. g,-. q-. c,-. e''-. d,,( e
  f4)-. \tuplet 3/2 4 { des8-. c-. c-. } r4 \tuplet 3/2 4 { ees8( d des) }
  r4 ees-. ees2->
}
lhATrill = \relative c' {
  s1*6
  \voiceThree
  r4 f\trill f4-. s4
}
lhB = \relative c, {
  bes4-. f''-. <bes d>-. \appoggiatura { cis,,,16 d e } f4--
  bes4-. f''-. <bes d>-. des,,--
  a4-. a''-. <c e>-. a,,--
  d4-. <d d'>-- c-. <c c'>--
  bes4-. f''-. <bes d>-. \appoggiatura { cis,,,16 d e } f4--
  bes4-. f''-. <bes d>-. des,,--
  c4-. c-. c-. c-.
  <des des'>4-- q-- <ees ees'>-- <e e'>--
}
lhC = \relative c, {
  \makeOctaves 1 { f4-. f-- e-. e-- d-. d-- c-. c-- }
  <bes bes'>4-. \tuplet 3/2 4 { f'4( bes8 a4 bes8 } a4)
  \makeOctaves 1 { c,4-- des d ees }
  \makeOctaves 1 { f4-. f-- e-. e-- d-. d-- c-. c-- bes-. bes-- b-. b--}
  << { c'4 c } \\ { c,2 } >> \tuplet 3/2 4 { c'4 bes8 a4 g8 }
}
lh = <<
  \global
  \clef bass
  {
    \lhIntroOne
    \lhAOne
    \lhATwo
    \lhB
    \lhC
  } \\
  {
    \lhIntroTwo
    \lhATrill
  }
>>
