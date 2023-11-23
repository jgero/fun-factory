{ pkgs }:
let
  recipients = [
    { name = "first"; address = "asdf"; city = "ipsum"; }
    { name = "second"; address = "asdf"; city = "ipsum"; }
  ];
  recepientTexFiles = pkgs.lib.lists.forEach recipients (info: {
    name = info.name;
    path = pkgs.writeTextFile {
      name = "${info.name}.tex";
      text = (import ./template.tex.nix info);
      destination = "/${info.name}.tex";
    };
  });
  compileString = pkgs.lib.strings.concatMapStrings
    (drv:
      ''pdflatex ${drv.path}/${drv.name}.tex
          cp ${drv.name}.pdf $out/
          '')
    recepientTexFiles;
in
pkgs.stdenv.mkDerivation {
  name = "Vorladungen";
  src = ../../.;
  buildInputs = [ pkgs.texlive.combined.scheme-full ];
  installPhase = ''
    mkdir -p $out
    ${compileString}
  '';
}
