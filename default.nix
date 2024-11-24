{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./programs/vim/default.nix
    ./programs/zsh.nix
    ./programs/tmux.nix
    ./programs/lynx.nix
  ];

  home.packages = with pkgs; [
    btop
    bat
    thefuck
    nodejs
    alejandra
    silver-searcher
    glow
    xsel
    python3
    lazygit
    nix-output-monitor
  ];

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
