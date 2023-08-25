{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = inputs: let pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux; in
  {
    devShell.x86_64-linux = pkgs.mkShell
    {
      buildInputs = with pkgs; [ gfortran blas ];
    };
  };
}
