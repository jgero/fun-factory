{ name, address, city }: ''%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Professional Formal Letter
% LaTeX Template
% Version 2.0 (12/2/17)
%
% This template originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Brian Moses
% Vel (vel@LaTeXTemplates.com)
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\documentclass[11pt, a4paper]{letter} % Set the font size (10pt, 11pt and 12pt) and paper size (letterpaper, a4paper, etc)

\input{lib/structure.tex} % Include the file that specifies the document structure

%\longindentation=0pt % Un-commenting this line will push the closing "Sincerely," and date to the left of the page

%----------------------------------------------------------------------------------------
%	YOUR INFORMATION
%----------------------------------------------------------------------------------------

\Who{Johannes} % Your name

\Title{ (jgero)} % Your title, leave blank for no title

\authordetails{
    Hackwerk Aalen\\
    Bürokratisierungsabteilung\\
    Bletzingerstraße 15\\
    73430 Aalen
}

%----------------------------------------------------------------------------------------
%	HEADER CONTENTS
%----------------------------------------------------------------------------------------

\logo{lib/logo.png} % Logo filename, your logo should have square dimensions (i.e. roughly the same width and height), if it does not, you will need to adjust spacing within the HEADER STRUCTURE block in structure.tex (read the comments carefully!)

\headerlineone{Hackwerk Aalen} % Top header line, leave blank if you only want the bottom line

\headerlinetwo{Vorladung Vereinsgründung} % Bottom header line

%----------------------------------------------------------------------------------------

\begin{document}

%----------------------------------------------------------------------------------------
%	TO ADDRESS
%----------------------------------------------------------------------------------------

\begin{letter}{
    ${name}\\
    ${address}\\
    ${city}
}

%----------------------------------------------------------------------------------------
%	LETTER CONTENT
%----------------------------------------------------------------------------------------

\opening{Dear Sir or Madam,}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a nisi diam. Morbi consequat facilisis mi, sit amet laoreet velit aliquet quis. Sed a nisi vel augue ultricies blandit. Phasellus et congue dolor, at cursus dui. Integer quis faucibus metus. Vestibulum lobortis ligula in lectus pretium, in placerat lacus iaculis. Mauris nibh erat, condimentum at tortor at, sagittis viverra tortor. Vivamus posuere fermentum eros, rhoncus sagittis nisi imperdiet ac.

Pellentesque hendrerit neque quis quam fringilla, vitae vulputate quam bibendum. Fusce in hendrerit mauris. Mauris pretium libero eget convallis mattis. Vivamus nec nisi imperdiet, lacinia diam id, facilisis nulla. Vivamus eleifend augue ut libero tincidunt commodo. Vivamus sodales in lacus vitae dictum. Nam et semper felis. Integer scelerisque accumsan condimentum. Aliquam laoreet erat vitae ornare consequat. Donec enim lacus, rutrum ut dui a, pretium mattis dui. Vivamus vulputate arcu nec congue convallis. Suspendisse faucibus turpis ac neque gravida, vel aliquet mauris tristique. In auctor fringilla nunc, sit amet tristique diam semper ac. Cras egestas nisi eu turpis facilisis, ac scelerisque elit lacinia. Sed eget adipiscing enim. Ut pulvinar ultrices purus ac eleifend.

Proin nunc erat, vestibulum quis tincidunt sit amet, cursus et libero. Aliquam erat volutpat. Sed vel malesuada velit. Vivamus risus arcu, facilisis non mauris sed, interdum varius tellus. Vivamus aliquam vel sapien quis ultricies. Mauris venenatis risus enim, in dapibus quam volutpat in. Vivamus iaculis sapien sit amet massa vehicula, tempus facilisis nulla adipiscing. Mauris ullamcorper pharetra libero, quis sodales dolor blandit et. Donec convallis risus id euismod pharetra. Suspendisse placerat laoreet imperdiet. Praesent malesuada fringilla urna, non sollicitudin erat. Nullam arcu neque, lobortis nec facilisis at, scelerisque ac erat. Nunc quis tincidunt lorem, vitae laoreet enim.

\closing{Hackwerk}

%----------------------------------------------------------------------------------------
%	OPTIONAL FOOTNOTE
%----------------------------------------------------------------------------------------

% Uncomment the 4 lines below to print a footnote with custom text
\def\thefootnote{}
\def\footnoterule{\hrule}
\footnotetext{{\footnotesize\em First text}\hspace*{\fill}{\footnotesize\em Footnote text}}
\def\thefootnote{\arabic{footnote}}

%----------------------------------------------------------------------------------------

\end{letter}

\end{document}
''