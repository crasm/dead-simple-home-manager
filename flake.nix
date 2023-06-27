{
  description = "Your dead simple Home Manager configuration"

  inputs.nixpkgs = {
    url = "github:nixos/nixpkgs/nixos-23.05";         ## Most stable, less downloads
    # url = "github:nixos/nixpkgs/nixpkgs-unstable";  ## Bleeding edge packages
    # url = "github:nixos/nixpkgs/nixos-unstable";    ## Above, but with nixos tests
  };

  inputs.home-manager = {
    url = "github:nix-community/home-manager/release-23.05";

    ## Track the master branch of Home Manager if you are not on a stable
    ## release
    # url = "github:nix-community/home-manager/master";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager }: {
    homeConfigurations = {
      "your-username@your-linux" = home-manager.lib.homeManagerConfiguration ({
        modules = [ (import ./home.nix) ];
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          # config.allowUnfree = true;
        };
      });

      "your-username@your-mac" = home-manager.lib.homeManagerConfiguration ({
        modules = [ (import ./home.nix) ];
        pkgs = import nixpkgs {
          # system = "aarch64-darwin";   ## For M1/M2/etc Apple Silicon
          system = "x86_64-darwin";
        };
      });
    };
  };
}
