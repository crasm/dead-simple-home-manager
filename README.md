# Dead Simple Home Manager

Trying to set up a cross-platform nix flake for a consistent shell environment is a major pain. All of the examples posted by experienced nix users are complex and difficult to follow. Here is an extremely simple flake configuration for home-manager that can get you up and running.

Dead simple cross-platform nix flake for Home Manager. Tested on Linux and macOS.

1. Install nix, using the [official installer](https://nixos.org/download.html) or [Zero-to-Nix](https://zero-to-nix.com/start/install)
2. `git clone https://github.com/crasm/dead-simple-home-manager ~/.config/home-manager`
3. Modify `flake.nix` and `home.nix` with your usernames, hostnames, and system values for your machines
3. `nix run home-manager/release-23.05 switch`
