# Dead Simple Home Manager

I found it frustrating to establish a clear and simple setup for a cross-platform nix flake home-manager configuration. Experienced nix users offer their own intricate configurations with custom functions (sometimes recursive!) and external flakes that add too much complexity for a beginner, while basic guides fail to account for essential cross-platform functionality.

So, here's Dead Simple Home Manager, a straightforward and easy-to-understand nix flake configuration that works cross-platform. I've tested it on Linux and macOS, but it could easily generalize to other systems.

Just follow these steps:

1. First, install nix. I recommend [Zero-to-Nix](https://zero-to-nix.com/start/install) or the [official installer](https://nixos.org/download.html)
2. Clone this repository: `git clone https://github.com/crasm/dead-simple-home-manager ~/.config/home-manager`
3. Personalize `flake.nix` with your `user@host` and `system` values
4. Personalize `home.nix` with your username and home directory
4. Finally, run: `nix run home-manager/release-23.05 switch`

And that's it. You're up and running with a dead simple, cross-platform home-manager configuration.
