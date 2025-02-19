{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-root.url = "github:srid/flake-root";
    mission-control.url = "github:Platonic-Systems/mission-control";
  };
  outputs =
    inputs@{
      self,
      nixpkgs,
      flake-parts,
      ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [
        inputs.flake-root.flakeModule
        inputs.mission-control.flakeModule
      ];
      perSystem =
        {
          pkgs,
          lib,
          config,
          ...
        }:
        {
          mission-control.scripts = with pkgs; {
            fmt = {
              exec = ''
                ${lib.getExe typstyle} -i ./*.typ
                ${lib.getExe nixfmt-rfc-style} -s flake.nix
              '';
            };
            build = {
              exec = "${lib.getExe typst} c ./*.typ";
            };
            clean = {
              exec = ''rm -rf ./*.pdf'';
            };
          };
          devShells.default = pkgs.mkShell {
            # cf. https://haskell.flake.page/devshell#composing-devshells
            inputsFrom = [ config.mission-control.devShell ];
          };
        };
    };
}
