\version "2.20.0"
\include "articulate.ly"
#(set-global-staff-size 19)

currentTag = #"print"
midiPan = #0.2 % affecting whole midi output, value from -1 to 1

% https://www.youtube.com/watch?v=jaSJBMzRVVE
% Youtube Soundtrack

\include "definitions.ly"
\include "makeOctaves.ly"
\include "lh.ly"
\include "rh.ly"

\paper {
    top-margin = 8\mm %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #3 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5 %-dist. from header/title to first system
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
  s1\mf s1*3
  s1*16
  s1\mp s1 s2. s4\mf s1
  s1\mp s1 s1_\cresc s1
  s1\f s1*6 s1_\dim
  s1*3 s2 s2_\cresc
  s1\mf s1 s4 s2.\mp
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
        \lh
      }
    >>
  >>
  \layout {
  }
  \midi { }
}
