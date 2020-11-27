global = {
  \time 4/4
  \key f \major
  \tempo 4 = 115
}
lhIntroOne = \relative c {
  \oneVoice
  \makeOctaves 1 { f4-. f-. e-. e-. }
  \makeOctaves 1 { \tuplet 3/2 4 { d4--( d8-.) r4 c8~-> } c2 }
  \makeOctaves 1 { bes4-. bes-. c-. \tuplet 3/2 4 { c4--( f,8-.) } }
  r4 \tuplet 7/4 { gis''16\( a gis a gis a gis } \tuplet 3/2 4 { a4\)-. <c,, c'>8~-> } q4
}
lhIntroTwo = \relative c' {
  s1 s2 \tuplet 3/2 4 { \voiceThree g8( c e } \stemDown g4)
  s1*2
}
lhAOne = \relative c, {
  \oneVoice
  \repeat unfold 2 { f4-. <a' c>-. c,,-. q-. }
  \repeat unfold 2 { bes4-. <bes'' d>-. f,-. q-. }
  f4-. <a' c>-. c,,-. q-. d-. <d'' fis>-. a,,-. q-.
  <aes' ges'>2 r4 \tuplet 3/2 4 { <des, des'>4--( <c c'>8-.) }
  \tuplet 3/2 4 { r4 c'8( } bes4)-. a-. g--
}
lhATwo = \relative c, {
  \oneVoice
  f4-. \parenthesizeSize <a' \parenthesize c>-. c,,-. \parenthesizeSize q-. f4-. c''-. c,,-. <a'' c>-.
  bes,,4-. \parenthesizeSize <bes'' \parenthesize d>-. f,-. \parenthesizeSize q-. bes,4-. d''-. f,,-. <bes' d>-.
  c,,4-. \parenthesizeSize <c'' \parenthesize e>-. g,-. \parenthesizeSize q-. c,-. e''-. d,,( e
  f4) \tuplet 3/2 4 { des8-. c-. c-. } r4 \tuplet 3/2 4 { ees8( d des) }
  r4 ees-. ees2->
}
lhATrill = \relative c' {
  s1*5 s2
  \ignoreNoteCollision
  \hideNotes
  \voiceFollowerA
  \showStaffSwitch a,,4*2/3 \cr bes'''8*2/3 \voiceFollowerB \cl <d, fis>4-. \unHideNotes
  \voiceThree
  r4 \pitchedTrill f\startTrillSpan ees f4-.\stopTrillSpan s4
  s1
}
lhB = \relative c, {
  bes4-. f''-. <bes d>-. \appoggiatura { cis,,,16 d e } f4--
  bes4-. f''-. <bes d>-. des,,--
  a4-. a''-. <c e>-. a,,--(
  d4-.) <d d'>--( c-.) <c c'>--
  bes4-. f''-. <bes d>-. \appoggiatura { cis,,,16 d e } f4--
  bes4-. f''-. <bes d>-. des,,--
  c4-. c-. c-. c-.
  <des des'>4-- q-- <ees ees'>-- <e e'>--
}
lhC = \relative c, {
  \makeOctaves 1 { f4-. f--( e-.) e--( d-.) d--( c-.) c--( }
  <bes bes'>4-.) \tuplet 3/2 4 { f'4( bes8 a4 bes8 } a4)
  \makeOctaves 1 { c,4-- des-- d-- ees-- }
  \makeOctaves 1 { f4-. f--( e-.) e--( d-.) d--( c-.) c--( bes-.) bes-- b-- b--}
  << { c'4 c } \\ { c,2 } >> \tuplet 3/2 4 { c'4( bes8 a4 g8) }
}
lhD = \relative c''' {
  \oneVoice
  r4 \clef treble bes\( d f a2 g\)
  a,,,1
  \tuplet 3/2 4 { d8 fis a c ees bes'~ } bes4 \clef bass \tuplet 3/2 4 { bes,,,8( a g) }
  g1
  <c, c'>4-.-> q-.-> q-.-> \tuplet 3/2 4 { q4-.-> <f f'>8-.-> }
  R1
  r4 <c c'>4-. q2->--
}
lhDVoiceTwo = \relative c'' {
  \voiceThree
  s1*2
  r4 \tuplet 3/2 4 { c8 e g~ } g1
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
    \lhD
  } \\
  {
    \lhIntroTwo
    \lhATrill
    s1*24
    \lhDVoiceTwo
  }
>>
