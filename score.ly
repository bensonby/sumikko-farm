\version "2.20.0"
\include "articulate.ly"
#(set-global-staff-size 17.5)

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
  arranger = "Transcribed by Benson Yeung"
  % copyright = "https://music.bensonby.me"
  % tagline = "https://music.bensonby.me"
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
      } { }
      \new Staff = "down" {
        \lh
      }
    >>
  >>
  \layout {
  }
  \midi { }
}
