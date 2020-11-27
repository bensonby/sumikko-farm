\version "2.20.0"
#(set-global-staff-size 18.5)

% https://www.youtube.com/watch?v=jaSJBMzRVVE
% Youtube Soundtrack

\include "definitions.ly"
\include "makeOctaves.ly"
\include "lh.ly"
\include "rh.ly"

\paper {
    top-margin = 8\mm %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #3 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #12 %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12 %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #14 %-pads music from copyright block

    % print-all-headers = ##t
    % footnote-separator-markup = ##f
    oddFooterMarkup = \markup {
      \fill-line {
        "https://music.bensonby.me"
      }
    }
    evenFooterMarkup = \oddFooterMarkup
}

\header {
  title = "Opening Title from Sumikkogurashi Farm"
  arranger = "Arranged by Benson Yeung"
  % copyright = "https://music.bensonby.me"
  % tagline = "https://music.bensonby.me"
}

dynamics = {
  \dynamicShiftD
  s1\mf s1 s1 s4 s2._\trillNotTogether
  s1*16
  \dynamicShiftC \dynamicShiftG
  s1\mp s1 s2. \dynamicShiftG s4\mf s1
  \dynamicShiftE
  s1\mp s1 \textScriptShiftA s1_\cresc s1
  s1\f s1*6 s1_\dim
  s1 s2. s4*1/3 s4*2/3\p s1 s2. s4_\cresc
  \dynamicShiftG
  s1\mf s1 s4 \dynamicShiftI s2.\mp
}
pedal = {
  \set Staff.pedalSustainStyle = #'bracket
  s1 s4 s4*2/3 s4*1/3\son s4 s4*1/3 s4*2/3\soff s1*2 % intro
  s1*6 s2\son s2\soff s1 % A1
  s1*8 % A2
  % \repeat unfold 2 { s2. s4\son s1\soff s1 s1 } % B
  % cannot handle grace notes here
  % add the pedal marks in left hand directly
  s1*8 % B without pedal
  s1*7 s2\son s2\soff % C
  s1*8 % D
}

\score {
  \new StaffGroup <<
    \new PianoStaff \with {
      instrumentName = #"Piano"
    } <<
      \new Staff = "up" \with {
      } {
        \rh
      }
      \new Dynamics = "dynamics" \with {
      } { \dynamics }
      \new Staff = "down" {
        <<
          { \lh }
          { \pedal }
        >>
      }
    >>
  >>
  \layout {
  }
  \midi { }
}
