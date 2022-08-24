{
  description = "Perimeter81 on Nix";
  inputs = { nixpkgs = { url = "nixpkgs/nixos-unstable"; }; };
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.hello;
  };
}