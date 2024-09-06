{ pkgs }: {
  deps = [
    pkgs.gh
    pkgs.firebase-tools
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}