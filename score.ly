\version "2.20.0"
#(set-global-staff-size 18.5)

% https://www.youtube.com/watch?v=jaSJBMzRVVE
% Youtube Soundtrack

\include "boldTenuto.ly"
\include "definitions.ly"
\include "makeOctaves.ly"
\include "lh.ly"
\include "rh.ly"

\paper {
    % top-margin = 10\mm %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #3 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #12 %-dist. from header/title to first system
    top-system-spacing.basic-distance = #16 %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #4 %-pads music from copyright block

    % print-all-headers = ##t
    % footnote-separator-markup = ##f
    evenHeaderMarkup = \markup {
      \column {
        \fill-line {
          \line { }
          \line {
            \vspace #2
            \on-the-fly \print-page-number-check-first
            \fromproperty #'page:page-number-string
          }
        }
      }
    }
    evenFooterMarkup = \markup {
      \fill-line {
        "https://music.bensonby.me"
      }
    }
    % evenFooterMarkup = \oddFooterMarkup
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
  s1\mf s1 s4 \dynamicShiftI s2.\mp s4 \dynamicShiftJ s2.\mf
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
  s1*2 s1\son s2\soff\son s4*2/3 s4*1/3\soff s4 s1*4 % D
}

\score {
  \new StaffGroup <<
    \new PianoStaff \with {
      instrumentName = #"Piano"
      \override StaffGrouper.staff-staff-spacing = #'(
        (padding . 1.7)
      )
    } <<
      \new Staff = "up" {
        \rh
      }
      \new Dynamics = "dynamics" { \dynamics }
      \new Staff = "down" {
        <<
          { \lh }
          { \pedal }
        >>
      }
    >>
  >>
  \layout {
		\context {
			\Voice
			\override Script.stencil = #bold-tenuto-script-stencil
		}
  }
  \midi { }
}
