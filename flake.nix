
{
  description = "stillness - a NixOS-native digital focus tool";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "stillness";
        version = "0.1.0";

        src = ./.;

        nativeBuildInputs = [
          pkgs.gnumake
        ];

        buildPhase = ''
          runHook preBuild
          make
          runHook postBuild
        '';

        installPhase = ''
          runHook preInstall
          install -Dm755 build/stillness \
            $out/bin/stillness
          runHook postInstall
        '';
      };

      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          gcc
          gnumake
          gdb
          clang-tools
          pkg-config
        ];
      };

      checks.${system}.default =
        self.packages.${system}.default;
    };
}
